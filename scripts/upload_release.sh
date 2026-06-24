#!/bin/bash
set -euo pipefail

# Upload XCFrameworks to GitHub Release
# Usage: ./scripts/upload_release.sh <version>

VERSION=$1

if [ -z "$VERSION" ]; then
  echo "Usage: $0 <version>"
  exit 1
fi

# Validate version format. Accept an optional SemVer pre-release suffix
# (e.g. "9.0.0-1") so wrapper repackages can ship with a tag distinct from
# the upstream MLKit base version.
if ! [[ "$VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+(-[0-9A-Za-z.-]+)?$ ]]; then
  echo "Error: Invalid version format '$VERSION'"
  echo "Expected semantic versioning format: X.Y.Z[-PRERELEASE]"
  exit 1
fi

echo "==================================="
echo "Upload Release Artifacts"
echo "Version: $VERSION"
echo "==================================="
echo ""

# Check if gh CLI is available
if ! command -v gh &> /dev/null; then
  if [ -x "/usr/local/bin/gh" ]; then
    GH_CMD="/usr/local/bin/gh"
  else
    echo "Error: GitHub CLI (gh) not found"
    echo "Please install it: https://cli.github.com/"
    exit 1
  fi
else
  GH_CMD="gh"
fi

# Check if release exists
echo "Checking if release $VERSION exists..."
if ! $GH_CMD release view "$VERSION" &> /dev/null; then
  echo "Error: Release $VERSION does not exist"
  echo "Please create the release first with: gh release create $VERSION"
  exit 1
fi

# Collect all XCFramework and bundle files
UPLOAD_FILES=()

# Add all xcframework zip files
for framework in GoogleMLKit/*.xcframework.zip; do
  if [ -f "$framework" ]; then
    UPLOAD_FILES+=("$framework")
    echo "  Prepared: $framework"
  fi
done

# Add all bundle zip files
for bundle in GoogleMLKit/*.bundle.zip; do
  if [ -f "$bundle" ]; then
    UPLOAD_FILES+=("$bundle")
    echo "  Prepared: $bundle"
  fi
done

if [ ${#UPLOAD_FILES[@]} -eq 0 ]; then
  echo "Error: No XCFramework or bundle files found in GoogleMLKit/ directory"
  exit 1
fi

echo ""
echo "Uploading ${#UPLOAD_FILES[@]} files to release $VERSION..."
$GH_CMD release upload "$VERSION" "${UPLOAD_FILES[@]}" --clobber

echo ""
echo "==================================="
echo "✓ Successfully uploaded all artifacts to release $VERSION"
echo "==================================="
