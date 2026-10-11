#!/bin/bash

set -e

VERSION=${1:-9.0.0}
DEST_DIR="Example/Example/Resources/Bundles"

echo "Downloading ML Kit resource bundles for version ${VERSION}..."

# Create destination directory
mkdir -p "${DEST_DIR}"

# Download and extract bundles.
# Asset names on the release: the OCR bundles ship as LatinOCRResources /
# ChineseOCRResources / DevanagariOCRResources / JapaneseOCRResources /
# KoreanOCRResources (NOT MLKitTextRecognitionResources) — the zips also extract
# with a nested packages/ prefix, so pull the single top-level *.bundle out.
# The Latin bundle is installed under its runtime name
# (MLKitTextRecognitionResources.bundle) to match the Example project and README.
BUNDLES=(
  "LatinOCRResources.bundle=MLKitTextRecognitionResources.bundle"
  "GoogleMVFaceDetectorResources.bundle"
  "ChineseOCRResources.bundle"
  "DevanagariOCRResources.bundle"
  "JapaneseOCRResources.bundle"
  "KoreanOCRResources.bundle"
)

for BUNDLE_SPEC in "${BUNDLES[@]}"; do
  BUNDLE="${BUNDLE_SPEC%%=*}"
  RUNTIME_NAME="${BUNDLE_SPEC#*=}"
  [ "${RUNTIME_NAME}" = "${BUNDLE}" ] && RUNTIME_NAME=""

  echo "Downloading ${BUNDLE}..."
  curl -L -f -o "/tmp/${BUNDLE}.zip" \
    "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/${VERSION}/${BUNDLE}.zip"

  echo "Extracting ${BUNDLE}..."
  EXTRACT_DIR="$(mktemp -d)"
  unzip -q -o "/tmp/${BUNDLE}.zip" -d "${EXTRACT_DIR}"
  rm "/tmp/${BUNDLE}.zip"

  BUNDLE_DIR="$(find "${EXTRACT_DIR}" -type d -name '*.bundle' | head -n 1)"
  if [ -z "${BUNDLE_DIR}" ]; then
    echo "Error: no *.bundle directory found inside ${BUNDLE}.zip" >&2
    rm -rf "${EXTRACT_DIR}"
    exit 1
  fi
  mv "${BUNDLE_DIR}" "${DEST_DIR}/${RUNTIME_NAME:-$(basename "${BUNDLE_DIR}")}"
  rm -rf "${EXTRACT_DIR}"

  echo "✓ ${BUNDLE} installed"
done

echo ""
echo "All bundles downloaded successfully!"
echo ""
echo "Next steps:"
echo "1. Open Example/Example.xcodeproj in Xcode"
echo "2. Drag the 'Bundles' folder from Example/Example/Resources/ into the Xcode project"
echo "3. Check 'Copy items if needed' and add to the Example target"
echo "4. Build and run"
