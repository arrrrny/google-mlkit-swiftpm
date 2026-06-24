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
            checksum: "6259316db153e291b73ae74dd8dc6bc9fc81248d87c81b29f71bbf8bd2f76037"),
        .binaryTarget(
            name: "MLKitBarcodeScanning",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitBarcodeScanning.xcframework.zip",
            checksum: "0f399ffd0d50473ad3548fc7968ba46252a9020cb059c9db924401780c19f8ac"),
        .binaryTarget(
            name: "MLKitCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitCommon.xcframework.zip",
            checksum: "730a1d9b28479231428e6be31cb40c43e2f6827de4e459050defddf367a07004"),
        .binaryTarget(
            name: "MLKitFaceDetection",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitFaceDetection.xcframework.zip",
            checksum: "97188e97e58da04079de73b993c4e93dfc71ae949bba817ade7528ab38a8f576"),
        .binaryTarget(
            name: "MLKitVision",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitVision.xcframework.zip",
            checksum: "71a08ff4add35f00e0925ace3b9135036dc993f9df0e05fded653b959cf1259f"),
        .binaryTarget(
            name: "GoogleToolboxForMac",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/GoogleToolboxForMac.xcframework.zip",
            checksum: "21efa6c9cbf09bb0aaead002d98e87ff3cdd60d042e50b93a313eb3cb3917941"),
        .binaryTarget(
            name: "MLKitTextRecognition",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognition.xcframework.zip",
            checksum: "b4c4bb3492d7e12b38735800374f0e8797cc2c4d0842310c9adeeea8217aee97"),
        .binaryTarget(
            name: "MLKitTextRecognitionChinese",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionChinese.xcframework.zip",
            checksum: "7d7fa234c256f155cb4b647d5fd21e4b24a5810d1c02f637deede990ff94e371"),
        .binaryTarget(
            name: "MLKitTextRecognitionDevanagari",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionDevanagari.xcframework.zip",
            checksum: "f4700a7af7990bdde4484fabf815cf2c4fdcc93b3efed949ef385178dc772783"),
        .binaryTarget(
            name: "MLKitTextRecognitionJapanese",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionJapanese.xcframework.zip",
            checksum: "4bfa7770f6d1a8c4ce65970a605da45db13be40b518898b312f7b248ff423e86"),
        .binaryTarget(
            name: "MLKitTextRecognitionKorean",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionKorean.xcframework.zip",
            checksum: "7a91263fe5c3249ccf30e7f9f247f4efb3a7f3ef81120349435feacc19f6d7d4"),
        .binaryTarget(
            name: "MLKitImageLabeling",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitImageLabeling.xcframework.zip",
            checksum: "53c79bfdffaf17348a667c565ccdf74b1d2eefa55074823b27087eec174a7606"),
        .binaryTarget(
            name: "MLKitImageLabelingCustom",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitImageLabelingCustom.xcframework.zip",
            checksum: "7a283a96dee794fba64b1897c16193f81ed5efea8711b810d28ab2368bbfd25f"),
        .binaryTarget(
            name: "MLKitObjectDetection",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitObjectDetection.xcframework.zip",
            checksum: "d2caf0defa50b118f8c492c4454add80e9d6b5918f7e12fe39f5c9a64cb43e6d"),
        .binaryTarget(
            name: "MLKitObjectDetectionCustom",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitObjectDetectionCustom.xcframework.zip",
            checksum: "5470f8ee0447923655d1ac6e231c23f519143be211194d33ac9dce9140bffb81"),
        .binaryTarget(
            name: "MLKitPoseDetection",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitPoseDetection.xcframework.zip",
            checksum: "e76ccc267bb86cf3281233236ec036cabd51d94cd2dc1562a58aeaa997c91ed2"),
        .binaryTarget(
            name: "MLKitPoseDetectionAccurate",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitPoseDetectionAccurate.xcframework.zip",
            checksum: "973105de8fb61f1c55caacc4fcdce29e0459a82f5c0902904228ec2a7144578d"),
        .binaryTarget(
            name: "MLKitSegmentationSelfie",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitSegmentationSelfie.xcframework.zip",
            checksum: "d66a2995bc57bb2ac7c0fb3e1c9c2616b8fbd7f1486bc9699577771bf6ee652a"),
        .binaryTarget(
            name: "MLKitLanguageID",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitLanguageID.xcframework.zip",
            checksum: "9e1d5a9ea1e2bdbb01c26b04e3b5d53ffa265f27e95b5166a027dbc920e50fa8"),
        .binaryTarget(
            name: "MLKitTranslate",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTranslate.xcframework.zip",
            checksum: "d704e553cdf10d0b7572d9d6cdfbb3faa6bf904fe4334dc1ac7eb6efab723769"),
        .binaryTarget(
            name: "MLKitSmartReply",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitSmartReply.xcframework.zip",
            checksum: "baf92199a8c8a0782e9d0b1b82cc10d3f2d42317feb45b9b8e92e14666801e4d"),
        .binaryTarget(
            name: "MLKitVisionKit",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitVisionKit.xcframework.zip",
            checksum: "ea9f8fd43f6b6bd5cb26cbf6662698ee5afddd6ff948c6a3a3b06a1fbf869143"),
        .binaryTarget(
            name: "MLKitImageLabelingCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitImageLabelingCommon.xcframework.zip",
            checksum: "023682cbf80c784a752664772fe7e3833a7f783faaeba34f975fe7f0dab4e906"),
        .binaryTarget(
            name: "MLKitObjectDetectionCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitObjectDetectionCommon.xcframework.zip",
            checksum: "63cfbcc425dfcf8e2191d24e09f10662d8c72210b2c427dbaeeced65e6e39cb2"),
        .binaryTarget(
            name: "MLKitPoseDetectionCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitPoseDetectionCommon.xcframework.zip",
            checksum: "860fab44a524c260e3cd7a5114f67bfd8a9d495bde30ad82c6f8d75659d02d88"),
        .binaryTarget(
            name: "MLKitSegmentationCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitSegmentationCommon.xcframework.zip",
            checksum: "b7ceb83ad4e706f48f5544a00135d4bf25ec078c7ce5dabf7ae48a2020c0a9f8"),
        .binaryTarget(
            name: "MLKitTextRecognitionCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitTextRecognitionCommon.xcframework.zip",
            checksum: "12baa778cc2806697d4a2bef5a1bbdc098bba596692c11023ddf803a0fa4f155"),
        .binaryTarget(
            name: "MLKitXenoCommon",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitXenoCommon.xcframework.zip",
            checksum: "95fa261f1021cc0a16df5b0e0e4f189c0363b5419c0e9d8256ec31974d8cffdd"),
        .binaryTarget(
            name: "MLKitNaturalLanguage",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/MLKitNaturalLanguage.xcframework.zip",
            checksum: "dd32aa7e35b4d9e05b5f2d7c2876881bedac16bc38554d7ed67514816a0e3aaa"),
        .binaryTarget(
            name: "SSZipArchive",
            url: "https://github.com/arrrrny/google-mlkit-swiftpm/releases/download/9.0.0-1/SSZipArchive.xcframework.zip",
            checksum: "4906f70278d84ab943bd1f8ce09bb765ed4c07bf3671213e5a26ab4c2fe51fcc"),
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
