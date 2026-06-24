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
      targets: ["MLKitTextRecognition", "MLKitTextRecognitionCommon", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitTextRecognitionChinese",
      targets: ["MLKitTextRecognitionChinese", "MLKitTextRecognitionCommon", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitTextRecognitionDevanagari",
      targets: ["MLKitTextRecognitionDevanagari", "MLKitTextRecognitionCommon", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitTextRecognitionJapanese",
      targets: ["MLKitTextRecognitionJapanese", "MLKitTextRecognitionCommon", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitTextRecognitionKorean",
      targets: ["MLKitTextRecognitionKorean", "MLKitTextRecognitionCommon", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitImageLabeling",
      targets: ["MLKitImageLabeling", "MLKitImageLabelingCommon", "MLKitVisionKit", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitImageLabelingCustom",
      targets: ["MLKitImageLabelingCustom", "MLKitImageLabelingCommon", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitObjectDetection",
      targets: ["MLKitObjectDetection", "MLKitObjectDetectionCommon", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitObjectDetectionCustom",
      targets: ["MLKitObjectDetectionCustom", "MLKitObjectDetectionCommon", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitPoseDetection",
      targets: ["MLKitPoseDetection", "MLKitPoseDetectionCommon", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitPoseDetectionAccurate",
      targets: ["MLKitPoseDetectionAccurate", "MLKitPoseDetectionCommon", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitSegmentationSelfie",
      targets: ["MLKitSegmentationSelfie", "MLKitSegmentationCommon", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitLanguageID",
      targets: ["MLKitLanguageID", "MLKitNaturalLanguage", "MLKitXenoCommon", "MLKitCommon", "GoogleToolboxForMac", "Common"]),
    .library(
      name: "MLKitTranslate",
      targets: ["MLKitTranslate", "SSZipArchive", "MLKitNaturalLanguage", "MLKitXenoCommon", "MLKitCommon", "GoogleToolboxForMac", "Common"]),
    .library(
      name: "MLKitSmartReply",
      targets: ["MLKitSmartReply", "MLKitLanguageID", "MLKitNaturalLanguage", "MLKitXenoCommon", "MLKitCommon", "GoogleToolboxForMac", "Common"]),
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
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLImage.xcframework.zip",
      checksum: "cae1cd3803599b1e27f3a265fe030be1c19e514afcb63608974513d6756f9b4a"),
    .binaryTarget(
      name: "MLKitBarcodeScanning",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitBarcodeScanning.xcframework.zip",
      checksum: "ef7e9c99e9ee0f649bddfd3ae21cf34c74f9a6e5d26cf9e0b1482e53179bc3ef"),
    .binaryTarget(
      name: "MLKitCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitCommon.xcframework.zip",
      checksum: "85c93121a92fca6a7bc9f6cdec959d4751ff691a2a270418c27348c7f898d1e0"),
    .binaryTarget(
      name: "MLKitFaceDetection",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitFaceDetection.xcframework.zip",
      checksum: "fc7b5ddb8ab6271d6b4881cc0d2a2c895a4dc7f01981d39f0d0c27d07837dd2a"),
    .binaryTarget(
      name: "MLKitVision",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitVision.xcframework.zip",
      checksum: "3fd78bfddab81a1d04464c3ef38ea0ee4b62d12d9dd8f2f5722418b7037d2ca0"),
    .binaryTarget(
      name: "GoogleToolboxForMac",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/GoogleToolboxForMac.xcframework.zip",
      checksum: "84c43c4fa6b4a4777828581d2b0bff0be8399399ac6c0c4ac86753a3f7634bbe"),
    .binaryTarget(
      name: "MLKitTextRecognition",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitTextRecognition.xcframework.zip",
      checksum: "145561a0d702379ce8a2f236191f167d8d471e1434184a2ddea3cc484ceb2718"),
    .binaryTarget(
      name: "MLKitTextRecognitionChinese",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitTextRecognitionChinese.xcframework.zip",
      checksum: "4cad19193d753283306ca853cf6efa23323ae82e8ae0f074666d50aeafeac8ae"),
    .binaryTarget(
      name: "MLKitTextRecognitionDevanagari",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitTextRecognitionDevanagari.xcframework.zip",
      checksum: "160a0c9702ec0bd5db09621353dab4d9d7f9b72011b77b3cbc1aa19b4f363ef5"),
    .binaryTarget(
      name: "MLKitTextRecognitionJapanese",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitTextRecognitionJapanese.xcframework.zip",
      checksum: "174af969ed17f2772420f843f9259fb3c6a8ba1a0b1a93fd04fb3d999c69f162"),
    .binaryTarget(
      name: "MLKitTextRecognitionKorean",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitTextRecognitionKorean.xcframework.zip",
      checksum: "9fda93153952cd06b190e7145575711a22c4a3ce2e5ba0233fbe8ce3880d1c1f"),
    .binaryTarget(
      name: "MLKitImageLabeling",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitImageLabeling.xcframework.zip",
      checksum: "a48647863fa7ae22ffb4f03ea64c4797ca9d057c3c4e8347591a224a32ac97ba"),
    .binaryTarget(
      name: "MLKitImageLabelingCustom",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitImageLabelingCustom.xcframework.zip",
      checksum: "5f0a10b60cfac3479822fac065619b6378583a23c346add3eb62ce7edce23cf4"),
    .binaryTarget(
      name: "MLKitObjectDetection",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitObjectDetection.xcframework.zip",
      checksum: "6602466e252409a631b500fcf9ceffefa4b63a33b7355aace4c6d98739a907ba"),
    .binaryTarget(
      name: "MLKitObjectDetectionCustom",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitObjectDetectionCustom.xcframework.zip",
      checksum: "1a2f97cf7d0aac0ddaee25fa0df9d79d083e1aec7cdd1d5fd94a3c747dd58057"),
    .binaryTarget(
      name: "MLKitPoseDetection",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitPoseDetection.xcframework.zip",
      checksum: "09a12993286119a799d1df524c850bc7a194172ff0f31422406dd08657261d56"),
    .binaryTarget(
      name: "MLKitPoseDetectionAccurate",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitPoseDetectionAccurate.xcframework.zip",
      checksum: "4cec132fd4c382b514cbe8dab8b1798e4cbb3009e2b6579e43cb6ba59c74118e"),
    .binaryTarget(
      name: "MLKitSegmentationSelfie",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitSegmentationSelfie.xcframework.zip",
      checksum: "cd4b7fbe1d4707eb1cf692d9802230dbc2c8cc8fd0eac66d879d3db73290897c"),
    .binaryTarget(
      name: "MLKitLanguageID",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitLanguageID.xcframework.zip",
      checksum: "7ba84d4617d5e96335c1ce86eff20b0b81fdd002e1c191d4f96711753fa29a53"),
    .binaryTarget(
      name: "MLKitTranslate",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitTranslate.xcframework.zip",
      checksum: "71f8a3ef2ee28d41828e600852b6c4d1bd7c6c6ed8f7f152da9ac2dae03a9001"),
    .binaryTarget(
      name: "MLKitSmartReply",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitSmartReply.xcframework.zip",
      checksum: "47b3f330eb33f7b5285b0600e511db23aaf8350a9978c1416daaaa4dcda77273"),
    .binaryTarget(
      name: "MLKitVisionKit",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitVisionKit.xcframework.zip",
      checksum: "98398f09ca59e4ffc209a70f291a9d5c79d1b5954f8d72b7e73f518235e02fdc"),
    .binaryTarget(
      name: "MLKitImageLabelingCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitImageLabelingCommon.xcframework.zip",
      checksum: "f217d3a12f497cbeca39f6d46b8f770f481650c202f0b629b5502bc6270964b4"),
    .binaryTarget(
      name: "MLKitObjectDetectionCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitObjectDetectionCommon.xcframework.zip",
      checksum: "26f196efd7848b27c5b9b0b5000a9ecb0af48bf4eb22218bce626a761f62c665"),
    .binaryTarget(
      name: "MLKitPoseDetectionCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitPoseDetectionCommon.xcframework.zip",
      checksum: "e895175211f3aec2dc06ae84ca537c5db7e547e936be7e32c3e14d4bd20c617b"),
    .binaryTarget(
      name: "MLKitSegmentationCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitSegmentationCommon.xcframework.zip",
      checksum: "c6366c78622ade5d8e4baf7bf8a112ba447bc1e6402bb021b99914ee41b391f6"),
    .binaryTarget(
      name: "MLKitTextRecognitionCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitTextRecognitionCommon.xcframework.zip",
      checksum: "3cb929188a0fe60bee68430fe82310270722bc0095b0b5789a3b7f3d829d5eab"),
    .binaryTarget(
      name: "MLKitXenoCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitXenoCommon.xcframework.zip",
      checksum: "dcb27a3c188d89646014561fde63068f1c05f122f32c58d36a1b3cbbf1de2b33"),
    .binaryTarget(
      name: "MLKitNaturalLanguage",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/MLKitNaturalLanguage.xcframework.zip",
      checksum: "0f3964d0c8caf1859bcbc403634b1db6be90987cbf5562e2c7a3231101db72c9"),
    .binaryTarget(
      name: "SSZipArchive",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0/SSZipArchive.xcframework.zip",
      checksum: "a4c0584721f3f12bdd47079b72dc25e4105246257f345c5c20dbdd2fad3d3a25"),
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
