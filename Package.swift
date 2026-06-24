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
            checksum: "5e908b326623c068b38e8ab9a63d619a1a2cc9c807d84caa1e0438543674556a"),
        .binaryTarget(
            name: "MLKitBarcodeScanning",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitBarcodeScanning.xcframework.zip",
            checksum: "619aa2c8956bb64e591b0ead88a4ce1a6275bd6de988e48f392dd546cb520f5a"),
        .binaryTarget(
            name: "MLKitCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitCommon.xcframework.zip",
            checksum: "795cbf1928bdf392dbb8fe0b956ca77cc6a2965615c6ca881fc7e9240287e5ad"),
        .binaryTarget(
            name: "MLKitFaceDetection",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitFaceDetection.xcframework.zip",
            checksum: "a1f03de9ef987234d984ac6371a37df6aa370d48246469cf05d15cb709a91ee0"),
        .binaryTarget(
            name: "MLKitVision",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitVision.xcframework.zip",
            checksum: "9f63c49deb54e29bd434364c7e9c66638c9d30863a2244b877f67c344739db03"),
        .binaryTarget(
            name: "GoogleToolboxForMac",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/GoogleToolboxForMac.xcframework.zip",
            checksum: "7fdb9f205f6d51796abed04d1c3208d9e77e60027fe99aba7a36107a8ab30fa7"),
        .binaryTarget(
            name: "MLKitTextRecognition",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognition.xcframework.zip",
            checksum: "b0c717684e4af70323c699dd3d54ad6db7730307d463825558271d8401644afe"),
        .binaryTarget(
            name: "MLKitTextRecognitionChinese",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionChinese.xcframework.zip",
            checksum: "bc87e6109cf697dc8df8f4335d01d6a3ace701d7b49d5988c75222fd3c8403b2"),
        .binaryTarget(
            name: "MLKitTextRecognitionDevanagari",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionDevanagari.xcframework.zip",
            checksum: "5b6a06728f2b1f2236c6484b229053c0da75fabdb75d36a974a3816ecc7770a6"),
        .binaryTarget(
            name: "MLKitTextRecognitionJapanese",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionJapanese.xcframework.zip",
            checksum: "c61c2460791cdb714bfada2a1d094c3f4d03ea88e9d11d3ba7cd9875522ca294"),
        .binaryTarget(
            name: "MLKitTextRecognitionKorean",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionKorean.xcframework.zip",
            checksum: "1a3af6e7559c2f1239c48a614dc319c0efa27d8a534c7fda87bba86912fb5552"),
        .binaryTarget(
            name: "MLKitImageLabeling",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitImageLabeling.xcframework.zip",
            checksum: "94f1f3b2594458848e7c6fec1003a77347fd9de06da510454934529489218da4"),
        .binaryTarget(
            name: "MLKitImageLabelingCustom",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitImageLabelingCustom.xcframework.zip",
            checksum: "c132e474272be5a42e8774e077b9e48b416c333d085efe54ad83b7856f965e4a"),
        .binaryTarget(
            name: "MLKitObjectDetection",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitObjectDetection.xcframework.zip",
            checksum: "4757848ae02bdd3a1e09fa70be795e96b718c7faadd87c748cdf68ef417d8c9c"),
        .binaryTarget(
            name: "MLKitObjectDetectionCustom",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitObjectDetectionCustom.xcframework.zip",
            checksum: "a1e4f020e9eb9bbd8d3697156c9b90d99cfe42d3519efb188c8345c7c028f567"),
        .binaryTarget(
            name: "MLKitPoseDetection",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitPoseDetection.xcframework.zip",
            checksum: "a9ea705af1c560a2ff70e463cb438f25930a226f4868073b311d502c331f6e2b"),
        .binaryTarget(
            name: "MLKitPoseDetectionAccurate",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitPoseDetectionAccurate.xcframework.zip",
            checksum: "062f1a441ade777ef8cda0719129bb1df4507a131e268786c163303d5534b9d9"),
        .binaryTarget(
            name: "MLKitSegmentationSelfie",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitSegmentationSelfie.xcframework.zip",
            checksum: "248ac7e8d2eac2037cd23de11b42477341620e1c432425ed11c9853fea31285d"),
        .binaryTarget(
            name: "MLKitLanguageID",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitLanguageID.xcframework.zip",
            checksum: "641166d6a5c1b0590eee1e214d86c737a67d2a08c998416a06d2ae37809fbf6b"),
        .binaryTarget(
            name: "MLKitTranslate",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTranslate.xcframework.zip",
            checksum: "c16d1fb55775b187251ad0d16fb46a8e2dabf0a71d9a2e58d13bbc0b67bde419"),
        .binaryTarget(
            name: "MLKitSmartReply",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitSmartReply.xcframework.zip",
            checksum: "1e26b5a8beedaee44deeefe4fd062a408cee989266ba02d04ce98ead7e351962"),
        .binaryTarget(
            name: "MLKitVisionKit",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitVisionKit.xcframework.zip",
            checksum: "c7ec9e378f638adfacf2f08bd77feea60e4b2fb70481df5920f0896e36d3af3b"),
        .binaryTarget(
            name: "MLKitImageLabelingCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitImageLabelingCommon.xcframework.zip",
            checksum: "cc89009813b896df63894b341abad180b2bff9f6d6d72ab95204649993bf1700"),
        .binaryTarget(
            name: "MLKitObjectDetectionCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitObjectDetectionCommon.xcframework.zip",
            checksum: "06bf5cbceabfb4f1490a814018b6474e5c41c017b5de64f1f4a1959bd1ee04bb"),
        .binaryTarget(
            name: "MLKitPoseDetectionCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitPoseDetectionCommon.xcframework.zip",
            checksum: "e914e0d934927f167e22dfe43ab6f39743beab70604a7d8508f5fa0c10aa66d0"),
        .binaryTarget(
            name: "MLKitSegmentationCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitSegmentationCommon.xcframework.zip",
            checksum: "8b4a08a6e0b5523fc1e2d58f6cb34f047df456bbba63a50d33445ca304396625"),
        .binaryTarget(
            name: "MLKitTextRecognitionCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionCommon.xcframework.zip",
            checksum: "880dd60a22854f5948dc96f77721fa6fa1f95a30255dbc8d5a0756151c9fb118"),
        .binaryTarget(
            name: "MLKitXenoCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitXenoCommon.xcframework.zip",
            checksum: "1936ded173244f400a25471f7a9deac15574d84521c0837674895d066f89ed61"),
        .binaryTarget(
            name: "MLKitNaturalLanguage",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitNaturalLanguage.xcframework.zip",
            checksum: "0ad1a235183d56f4b04137f7c5afc41ebeb9ca6413c5ab5ac38a3bae052eab25"),
        .binaryTarget(
            name: "SSZipArchive",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/SSZipArchive.xcframework.zip",
            checksum: "ba3255172008e3212e791aa27fe3983e9575e6fac6d433755d32425992a5acd4"),
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
