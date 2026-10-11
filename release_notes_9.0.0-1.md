# MLKit 9.0.0-1

## What's Changed

- Update to MLKit 9.0.0: Podfile pinned to 9.0.0, XCFrameworks rebuilt, Package.swift checksums and dependency pins updated to match Podfile.lock (GoogleUtilities 8.1.1, PromisesObjC 2.4.1)
- Model-data preservation via `ar`/`ranlib` repackaging: framework binaries are re-archived with `ar r` + `ranlib` before zipping so the embedded model data (e.g. the ~58MB in MLKitTextRecognitionCommon) survives the archive round-trip
- Release URLs repointed from the upstream d-date fork to this arrrrny fork
- Example app now bundles MLKitTextRecognitionResources.bundle for text recognition support

## Dependencies

- GoogleDataTransport: 10.1.0
- GoogleUtilities: 8.1.1
- GTMSessionFetcher: 3.5.0
- nanopb: 3.30910.0
- PromisesObjC: 2.4.1

## Framework Versions

- MLKitBarcodeScanning: 8.0.0
- MLKitFaceDetection: 8.0.0
- MLKitCommon: 14.0.0
- MLKitVision: 10.0.0
- MLImage: 1.0.0-beta8
- GoogleToolboxForMac: 4.2.1

## XCFrameworks

This release includes the following assets:
- MLKitBarcodeScanning.xcframework.zip
- MLKitFaceDetection.xcframework.zip
- MLImage.xcframework.zip
- MLKitCommon.xcframework.zip
- MLKitVision.xcframework.zip
- GoogleToolboxForMac.xcframework.zip
- GoogleMVFaceDetectorResources.bundle.zip

## Installation

See [README.md](https://github.com/arrrrny/google-mlkit-swiftpm/blob/main/README.md) for installation instructions.

🤖 Generated with [Claude Code](https://claude.com/claude-code)
