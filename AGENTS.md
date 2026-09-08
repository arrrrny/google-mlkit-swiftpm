# ⚠️ LANGUAGE RULE — MANDATORY

**ALL responses MUST be in English ONLY. Never respond in Turkish, Chinese, or any other language, regardless of the user's locale or the presence of non-English content in the codebase. This is a hard rule with no exceptions.**

---

# Agent guide for Google MLKit SwiftPM

This repository wraps Google ML Kit frameworks for Swift Package Manager compatibility. It converts CocoaPods-distributed ML Kit frameworks to XCFrameworks.

## Role

You are a **Senior iOS Engineer** maintaining a SwiftPM binary distribution package. Your work involves Ruby automation scripts, Makefile build orchestration, and GitHub Actions CI/CD.

## Core instructions

- Target iOS 15.0 or later (matches Package.swift platform requirement).
- Swift tools version 5.9 (matches Package.swift).
- Do not introduce third-party frameworks without asking first.
- This is NOT a typical app project. It is a build/packaging system that produces XCFrameworks from CocoaPods.

## Project structure

- `Package.swift` - Swift package definition with 17 library products and 30+ binary targets
- `Podfile` - CocoaPods dependencies for downloading ML Kit frameworks
- `Makefile` - Build orchestration (bootstrap, build, create-xcframework, archive)
- `scripts/` - Ruby and shell automation scripts
- `Resources/` - Info.plist templates for frameworks that lack them
- `xcframework-maker/` - Submodule for XCFramework conversion tool
- `Example/` - Reference iOS app demonstrating ML Kit modules
- `.github/workflows/` - CI/CD for version checking and building

## Key workflows

1. **Version check**: `check-mlkit-updates.yml` runs daily, creates GitHub issues for new ML Kit versions
2. **Build**: `build-mlkit.yml` is triggered manually, builds XCFrameworks and creates releases
3. **Local build**: `./scripts/build_all.sh <version>` for local development

## Script conventions

- Ruby scripts use standard library only (no gems beyond CocoaPods)
- Shell scripts are POSIX-compatible where possible
- All scripts should handle errors gracefully and provide clear output

## PR instructions

- Test automation scripts locally before committing
- Verify Package.swift syntax: `swift package dump-package`
- Update documentation if adding new modules or changing build process

# Shared terminal (`pallet`)
Long-running or user-visible commands (e.g. `flutter run`, `dart run build_runner build`, `bun run watch:dev`) should run in the **shared `pallet` tmux session** so both the human and agents see the same terminal. The human attaches with `pallet up` (in their terminal, e.g. Zap); agents drive it via the `pallet` CLI or the `pallet` MCP server (`~/Developer/forklift/scripts/pallet/pallet_mcp_server.dart`):

```bash
pallet ensure                 # create the shared session if missing
pallet run -n 'cmd'           # run in a fresh window (visible to the human)
pallet wait -w N              # wait until that window goes idle
pallet read -w N              # capture the window's output
```

See `~/Developer/forklift/scripts/pallet/README.md` for the full workflow
and CLI reference.




## 🔍 Code Search — MANDATORY FIRST STEP

**STOP. Before using `grep`, `find`, `rg`, `ripgrep`, or ANY shell-based search, you MUST use semantic search first.**

```bash
# THIS is how you search code — ALWAYS FIRST:
mcp__claude_context__search_code(query="what you're looking for", path="/absolute/path/to/repo")
```

**Why?** Semantic search understands code relationships, finds implementations by meaning (not just text), and catches things grep misses entirely.

**Rules:**
1. **ALWAYS** start with `mcp__claude_context__search_code` for code discovery
2. **ONLY** fall back to `grep`/`find`/`rg` when:
   - You need an EXACT literal string match (e.g., a specific error message)
   - The semantic search index is unavailable/broken
   - You're searching for file names, not code content
3. **NEVER** use grep as your first code search tool — it's slower and less accurate

**Indexing:** If search fails with "not indexed", run `mcp__claude_context__index_codebase(path="/absolute/path")` first, then retry.

## 📚 Zread Wiki — Check First

**Before diving into source code, check if a zread wiki exists for this project:**

```bash
# Check if wiki exists:
cat .zread/wiki/current 2>/dev/null && echo "Wiki exists" || echo "No wiki"

# If wiki exists, read the pages directly:
ls .zread/wiki/versions/$(cat .zread/wiki/current)/

# To regenerate wiki (if stale):
zread generate --stdio
```

**Why?** Zread generates comprehensive documentation from code. Reading the wiki is faster than crawling source files manually.

**Rules:**
1. **ALWAYS** check `.zread/wiki/current` before reading source files
2. If wiki exists, read the markdown pages directly — they're already indexed
3. If wiki is missing or stale, run `zread generate --stdio` to create it
4. Wiki pages live in `.zread/wiki/versions/<id>/` — read `wiki.json` for the TOC
