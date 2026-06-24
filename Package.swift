// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "GoogleMLKitSwiftPM",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "MLKitBarcodeScanning",
            targets: ["MLKitBarcodeScanning", "MLImage", "MLKitVision", "Common"]),
        .library(
            name: "MLKitFaceDetection",
            targets: ["MLKitFaceDetection", "MLImage", "MLKitVision", "Common"]),
        .library(
            name: "MLKitTextRecognition",
            targets: [
                "MLKitTextRecognition", "MLKitTextRecognitionCommon", "MLImage", "MLKitVision",
                "Common",
            ]),
        .library(
            name: "MLKitTextRecognitionChinese",
            targets: [
                "MLKitTextRecognitionChinese", "MLKitTextRecognitionCommon", "MLImage",
                "MLKitVision", "Common",
            ]),
        .library(
            name: "MLKitTextRecognitionDevanagari",
            targets: [
                "MLKitTextRecognitionDevanagari", "MLKitTextRecognitionCommon", "MLImage",
                "MLKitVision", "Common",
            ]),
        .library(
            name: "MLKitTextRecognitionJapanese",
            targets: [
                "MLKitTextRecognitionJapanese", "MLKitTextRecognitionCommon", "MLImage",
                "MLKitVision", "Common",
            ]),
        .library(
            name: "MLKitTextRecognitionKorean",
            targets: [
                "MLKitTextRecognitionKorean", "MLKitTextRecognitionCommon", "MLImage",
                "MLKitVision", "Common",
            ]),
        .library(
            name: "MLKitImageLabeling",
            targets: [
                "MLKitImageLabeling", "MLKitImageLabelingCommon", "MLKitVisionKit", "MLImage",
                "MLKitVision", "Common",
            ]),
        .library(
            name: "MLKitImageLabelingCustom",
            targets: [
                "MLKitImageLabelingCustom", "MLKitImageLabelingCommon", "MLImage", "MLKitVision",
                "Common",
            ]),
        .library(
            name: "MLKitObjectDetection",
            targets: [
                "MLKitObjectDetection", "MLKitObjectDetectionCommon", "MLImage", "MLKitVision",
                "Common",
            ]),
        .library(
            name: "MLKitObjectDetectionCustom",
            targets: [
                "MLKitObjectDetectionCustom", "MLKitObjectDetectionCommon", "MLImage",
                "MLKitVision", "Common",
            ]),
        .library(
            name: "MLKitPoseDetection",
            targets: [
                "MLKitPoseDetection", "MLKitPoseDetectionCommon", "MLImage", "MLKitVision",
                "Common",
            ]),
        .library(
            name: "MLKitPoseDetectionAccurate",
            targets: [
                "MLKitPoseDetectionAccurate", "MLKitPoseDetectionCommon", "MLImage", "MLKitVision",
                "Common",
            ]),
        .library(
            name: "MLKitSegmentationSelfie",
            targets: [
                "MLKitSegmentationSelfie", "MLKitSegmentationCommon", "MLImage", "MLKitVision",
                "Common",
            ]),
        .library(
            name: "MLKitLanguageID",
            targets: [
                "MLKitLanguageID", "MLKitNaturalLanguage", "MLKitXenoCommon", "MLKitCommon",
                "GoogleToolboxForMac", "Common",
            ]),
        .library(
            name: "MLKitTranslate",
            targets: [
                "MLKitTranslate", "SSZipArchive", "MLKitNaturalLanguage", "MLKitXenoCommon",
                "MLKitCommon", "GoogleToolboxForMac", "Common",
            ]),
        .library(
            name: "MLKitSmartReply",
            targets: [
                "MLKitSmartReply", "MLKitLanguageID", "MLKitNaturalLanguage", "MLKitXenoCommon",
                "MLKitCommon", "GoogleToolboxForMac", "Common",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/google/promises.git", exact: "2.4.1"),
        .package(url: "https://github.com/google/GoogleDataTransport.git", exact: "10.1.0"),
        .package(url: "https://github.com/google/GoogleUtilities.git", exact: "8.1.1"),
        .package(url: "https://github.com/google/gtm-session-fetcher.git", exact: "3.5.0"),
        .package(url: "https://github.com/firebase/nanopb.git", exact: "2.30910.0"),
    ],
    targets: [
        // For debugging
        // .binaryTarget(
        //   name: "MLImage",
        //   path: "GoogleMLKit/MLImage.xcframework"),
        // .binaryTarget(
        //   name: "MLKitBarcodeScanning",
        //   path: "GoogleMLKit/MLKitBarcodeScanning.xcframework"),
        // .binaryTarget(
        //   name: "MLKitCommon",
        //   path: "GoogleMLKit/MLKitCommon.xcframework"),
        // .binaryTarget(
        //   name: "MLKitFaceDetection",
        //   path: "GoogleMLKit/MLKitFaceDetection.xcframework"),
        // .binaryTarget(
        //   name: "MLKitVision",
        //   path: "GoogleMLKit/MLKitVision.xcframework"),
        // .binaryTarget(
        //   name: "GoogleToolboxForMac",
        //   path: "GoogleMLKit/GoogleToolboxForMac.xcframework"),
        // .binaryTarget(
        //   name: "MLKitTextRecognition",
        //   path: "GoogleMLKit/MLKitTextRecognition.xcframework"),
        // .binaryTarget(
        //   name: "MLKitTextRecognitionChinese",
        //   path: "GoogleMLKit/MLKitTextRecognitionChinese.xcframework"),
        // .binaryTarget(
        //   name: "MLKitTextRecognitionDevanagari",
        //   path: "GoogleMLKit/MLKitTextRecognitionDevanagari.xcframework"),
        // .binaryTarget(
        //   name: "MLKitTextRecognitionJapanese",
        //   path: "GoogleMLKit/MLKitTextRecognitionJapanese.xcframework"),
        // .binaryTarget(
        //   name: "MLKitTextRecognitionKorean",
        //   path: "GoogleMLKit/MLKitTextRecognitionKorean.xcframework"),
        // .binaryTarget(
        //   name: "MLKitImageLabeling",
        //   path: "GoogleMLKit/MLKitImageLabeling.xcframework"),
        // .binaryTarget(
        //   name: "MLKitImageLabelingCustom",
        //   path: "GoogleMLKit/MLKitImageLabelingCustom.xcframework"),
        // .binaryTarget(
        //   name: "MLKitObjectDetection",
        //   path: "GoogleMLKit/MLKitObjectDetection.xcframework"),
        // .binaryTarget(
        //   name: "MLKitObjectDetectionCustom",
        //   path: "GoogleMLKit/MLKitObjectDetectionCustom.xcframework"),
        // .binaryTarget(
        //   name: "MLKitPoseDetection",
        //   path: "GoogleMLKit/MLKitPoseDetection.xcframework"),
        // .binaryTarget(
        //   name: "MLKitPoseDetectionAccurate",
        //   path: "GoogleMLKit/MLKitPoseDetectionAccurate.xcframework"),
        // .binaryTarget(
        //   name: "MLKitSegmentationSelfie",
        //   path: "GoogleMLKit/MLKitSegmentationSelfie.xcframework"),
        // .binaryTarget(
        //   name: "MLKitLanguageID",
        //   path: "GoogleMLKit/MLKitLanguageID.xcframework"),
        // .binaryTarget(
        //   name: "MLKitTranslate",
        //   path: "GoogleMLKit/MLKitTranslate.xcframework"),
        // .binaryTarget(
        //   name: "MLKitSmartReply",
        //   path: "GoogleMLKit/MLKitSmartReply.xcframework"),

        .binaryTarget(
            name: "MLImage",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLImage.xcframework.zip",
            checksum: "85aa434761e3489d73d2e739202ff59df10030569c65261f7ef44b92b7a33d5d"),
        .binaryTarget(
            name: "MLKitBarcodeScanning",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitBarcodeScanning.xcframework.zip",
            checksum: "7455dcecfbe5c71647425da59de25edb6fce3d47ab8a52ded8c964c16022d55d"),
        .binaryTarget(
            name: "MLKitCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitCommon.xcframework.zip",
            checksum: "ee0f0d2bbb0180d37123f302d168d7097ece35bac2f968cc8b06260a1868d9fd"),
        .binaryTarget(
            name: "MLKitFaceDetection",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitFaceDetection.xcframework.zip",
            checksum: "c2650e3cfe8293fa38f066ed94cd0117b2d533ab41ea88816509bd3033c3f228"),
        .binaryTarget(
            name: "MLKitVision",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitVision.xcframework.zip",
            checksum: "e278a2ee815083ab40e203a1c7e25349813e8b83c84393e95fa18b664ccaccdd"),
        .binaryTarget(
            name: "GoogleToolboxForMac",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/GoogleToolboxForMac.xcframework.zip",
            checksum: "f1791ee8c3a048f5de185b9ae834d4f6feb4f3f1518857fa1e053601cad7d85d"),
        .binaryTarget(
            name: "MLKitTextRecognition",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognition.xcframework.zip",
            checksum: "3cbf216b59919ff7ed0223f017ab04bd6763ab2a7a79b3d5c8a029898c72e56e"),
        .binaryTarget(
            name: "MLKitTextRecognitionChinese",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionChinese.xcframework.zip",
            checksum: "8c0f35793a1278e820d8c7e6fb80de5ef3725d58bfe9839c85d5b6f097070cae"),
        .binaryTarget(
            name: "MLKitTextRecognitionDevanagari",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionDevanagari.xcframework.zip",
            checksum: "b0823f342208d88d9acef27db7dee95718b6926cef05287ca75af55c5d432166"),
        .binaryTarget(
            name: "MLKitTextRecognitionJapanese",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionJapanese.xcframework.zip",
            checksum: "4fd17cfdadce1d56f46ba858442f01f9caf7dd5409fa82b5e7a7294c1d763aba"),
        .binaryTarget(
            name: "MLKitTextRecognitionKorean",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionKorean.xcframework.zip",
            checksum: "af2c54ec54c60c0d010a7411ce4c0c7efaa7510a71138e6a26be104a5294422b"),
        .binaryTarget(
            name: "MLKitImageLabeling",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitImageLabeling.xcframework.zip",
            checksum: "168eb84f2195098fafc337559dbe1523060c95890da49fa163a669792df9c21f"),
        .binaryTarget(
            name: "MLKitImageLabelingCustom",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitImageLabelingCustom.xcframework.zip",
            checksum: "26fb13fe6e277e5f194896c892f774ee9970e9bb73cffe9ad20360b613e044bc"),
        .binaryTarget(
            name: "MLKitObjectDetection",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitObjectDetection.xcframework.zip",
            checksum: "215a7071c88b0e1577d9555e0aebe6d535152fff29f37108f5aa5e74d52db21f"),
        .binaryTarget(
            name: "MLKitObjectDetectionCustom",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitObjectDetectionCustom.xcframework.zip",
            checksum: "e740f27b4b3597c4e1b014acfac40e72f4ed7180bc5029fb366de56a548d3909"),
        .binaryTarget(
            name: "MLKitPoseDetection",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitPoseDetection.xcframework.zip",
            checksum: "05439443224598ce1765850f71057a431833837e6f6d7c46ecb876a5c3ce6ac0"),
        .binaryTarget(
            name: "MLKitPoseDetectionAccurate",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitPoseDetectionAccurate.xcframework.zip",
            checksum: "f95698c5dd0037378bfcf5cd24ec5a11804208a358f337455c6ca8d2541f981f"),
        .binaryTarget(
            name: "MLKitSegmentationSelfie",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitSegmentationSelfie.xcframework.zip",
            checksum: "9ceafb1dab3f79c4781736fb803e158cbc61d17169ca067a97c69602b424a410"),
        .binaryTarget(
            name: "MLKitLanguageID",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitLanguageID.xcframework.zip",
            checksum: "cb4f1de7ea94f7d8c6e654b0eca33b843bddae546545b9a79697a6bbfe92fd0b"),
        .binaryTarget(
            name: "MLKitTranslate",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTranslate.xcframework.zip",
            checksum: "7cfe9eac34949c6743136fb96fa9c8b429f283cc9cb26fc871e886c4cf312986"),
        .binaryTarget(
            name: "MLKitSmartReply",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitSmartReply.xcframework.zip",
            checksum: "93df9f9e189e16388290dd9b70aef645de49f3730440bf5921d88364e7c307fe"),
        .binaryTarget(
            name: "MLKitVisionKit",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitVisionKit.xcframework.zip",
            checksum: "54853b2d48ae4fccd7e6cf455b1cdfc04a5213d92cb55efa51dbc883d0c8d118"),
        .binaryTarget(
            name: "MLKitImageLabelingCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitImageLabelingCommon.xcframework.zip",
            checksum: "2e61776f3710a6574cdb95e0a331424cd691131f0dbfa34ff4c113d51562a70f"),
        .binaryTarget(
            name: "MLKitObjectDetectionCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitObjectDetectionCommon.xcframework.zip",
            checksum: "19f0caf139c0f62d398b4f67423b5b58762a99af821c0ec0d7e45400a5079926"),
        .binaryTarget(
            name: "MLKitPoseDetectionCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitPoseDetectionCommon.xcframework.zip",
            checksum: "1e79fa582d3ef4f486267b3c18ceafd6a44a10521ce162041b4043d9e5e7f867"),
        .binaryTarget(
            name: "MLKitSegmentationCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitSegmentationCommon.xcframework.zip",
            checksum: "2af2ae6331ca0c3100225874cfec07d6306b37c34c1ae0b2afd410f276ec54c6"),
        .binaryTarget(
            name: "MLKitTextRecognitionCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionCommon.xcframework.zip",
            checksum: "b68df969bd2e01faaf108efedee5dffd0e7738591b8e73ac472d3b69d5259577"),
        .binaryTarget(
            name: "MLKitXenoCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitXenoCommon.xcframework.zip",
            checksum: "edb355276ce7eeec6e9905fd5d62a1f398dfd58a1201530fd969711b4d74b6fc"),
        .binaryTarget(
            name: "MLKitNaturalLanguage",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitNaturalLanguage.xcframework.zip",
            checksum: "2356e74a09556efc99ccab5be78e79345492e4aaea8399d476be40b4ccfdf462"),
        .binaryTarget(
            name: "SSZipArchive",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/SSZipArchive.xcframework.zip",
            checksum: "714ce53eb032017bd255c57fbb0d32056f4ff958bf65be78d72f09090261e9e5"),
        .target(
            name: "Common",
            dependencies: [
                "MLKitCommon",
                "GoogleToolboxForMac",
                .product(name: "GULAppDelegateSwizzler", package: "GoogleUtilities"),
                .product(name: "GULEnvironment", package: "GoogleUtilities"),
                .product(name: "GULLogger", package: "GoogleUtilities"),
                .product(name: "GULMethodSwizzler", package: "GoogleUtilities"),
                .product(name: "GULNSData", package: "GoogleUtilities"),
                .product(name: "GULNetwork", package: "GoogleUtilities"),
                .product(name: "GULReachability", package: "GoogleUtilities"),
                .product(name: "GULUserDefaults", package: "GoogleUtilities"),
                .product(name: "GTMSessionFetcher", package: "gtm-session-fetcher"),
                .product(name: "GoogleDataTransport", package: "GoogleDataTransport"),
                .product(name: "nanopb", package: "nanopb"),
                .product(name: "FBLPromises", package: "promises"),
            ]),
    ]
)
