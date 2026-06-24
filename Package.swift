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
    .package(url: "https://github.com/google/promises.git", exact: "2.4.0"),
    .package(url: "https://github.com/google/GoogleDataTransport.git", exact: "10.1.0"),
    .package(url: "https://github.com/google/GoogleUtilities.git", exact: "8.1.0"),
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
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLImage.xcframework.zip",
      checksum: "f42db01defbabad832b43276e8d0cf8c9a3d908719a35940704e834b701c384e"),
    .binaryTarget(
      name: "MLKitBarcodeScanning",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitBarcodeScanning.xcframework.zip",
      checksum: "8877039b32f46b35a38c16b53a01b8f9de8c81b62f891472048fb16f05f0008c"),
    .binaryTarget(
      name: "MLKitCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitCommon.xcframework.zip",
      checksum: "69bcd19a578ec64f2aca42d73393b00c9d9472bd13564da04c3904e627d50acc"),
    .binaryTarget(
      name: "MLKitFaceDetection",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitFaceDetection.xcframework.zip",
      checksum: "8c67b4ba063abc70d94b83a2b391429409495a1fa7eab1d23a58055b93437fc7"),
    .binaryTarget(
      name: "MLKitVision",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitVision.xcframework.zip",
      checksum: "6f5a204c144972ebf79bf820e64fe1c5d92534487920cdc735c56b2656d78a9c"),
    .binaryTarget(
      name: "GoogleToolboxForMac",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/GoogleToolboxForMac.xcframework.zip",
      checksum: "245956907b221f0e635d725ba521ffb1131164c200ea38c39b538eeedc5b7e53"),
    .binaryTarget(
      name: "MLKitTextRecognition",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitTextRecognition.xcframework.zip",
      checksum: "16c3bffb2543019b69a079a996016ebdbd2d241bb9b2b9c631891d75ba3eea1a"),
    .binaryTarget(
      name: "MLKitTextRecognitionChinese",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitTextRecognitionChinese.xcframework.zip",
      checksum: "2b5bb76e8a213ca7adea4565ed82d84420970731768461f39e7b4ea2cc3e94a5"),
    .binaryTarget(
      name: "MLKitTextRecognitionDevanagari",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitTextRecognitionDevanagari.xcframework.zip",
      checksum: "597cd0a5d390eb773757dddc84d6079b74593a630db5cf17480c887823bc8c9c"),
    .binaryTarget(
      name: "MLKitTextRecognitionJapanese",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitTextRecognitionJapanese.xcframework.zip",
      checksum: "efc03aeec4b0a356a39e98f9a2220401954083f0a4c4beebfa17b0ceaa35db09"),
    .binaryTarget(
      name: "MLKitTextRecognitionKorean",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitTextRecognitionKorean.xcframework.zip",
      checksum: "e4870712d80768f462de0311b209c866851a46e9474a1670a3f47aefb31c833b"),
    .binaryTarget(
      name: "MLKitImageLabeling",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitImageLabeling.xcframework.zip",
      checksum: "f881725fef0e5010af5669175442339bc1e23e5827f20f8b19a443eeada84a84"),
    .binaryTarget(
      name: "MLKitImageLabelingCustom",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitImageLabelingCustom.xcframework.zip",
      checksum: "5c75460a45fc8e0b654fb4ac3e5f53c77a6021cd0051663e960c47a407d91439"),
    .binaryTarget(
      name: "MLKitObjectDetection",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitObjectDetection.xcframework.zip",
      checksum: "a1e4f3cff4f2f1cda3a328d69ee95f72924f6fd1f32056d28234fa8abaea3e34"),
    .binaryTarget(
      name: "MLKitObjectDetectionCustom",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitObjectDetectionCustom.xcframework.zip",
      checksum: "869b94b1b7ecb9a1a414b646d7f19513b695ae71140c536fa752b676a5b80e7f"),
    .binaryTarget(
      name: "MLKitPoseDetection",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitPoseDetection.xcframework.zip",
      checksum: "5f2f293fa69a4d7db96e9864d4500521a700bb89be5ca67e77f3d76a84b49016"),
    .binaryTarget(
      name: "MLKitPoseDetectionAccurate",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitPoseDetectionAccurate.xcframework.zip",
      checksum: "41f7b39e2f65dc0209bddb34716a4a824bc99c33f0c7e6f1d30a107aeda5e5f8"),
    .binaryTarget(
      name: "MLKitSegmentationSelfie",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitSegmentationSelfie.xcframework.zip",
      checksum: "086c73be2461c3ce599ed92877706ea473f81dc0ce43e1b9a3c497dcdefac35f"),
    .binaryTarget(
      name: "MLKitLanguageID",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitLanguageID.xcframework.zip",
      checksum: "8c8ada06f56f43b0a02c73ad3df70739d7d41a7f0ad808f56289ba28c79df7bc"),
    .binaryTarget(
      name: "MLKitTranslate",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitTranslate.xcframework.zip",
      checksum: "73e5c81a66ef1209c8f4d91b29c1ae094ea5de29f5ac102cbaf524cd5985bd42"),
    .binaryTarget(
      name: "MLKitSmartReply",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitSmartReply.xcframework.zip",
      checksum: "0208b64c2bd22bf6bc8e3039dc4ccfa7fe5a62f2c456ee14fcfe37f4f12bee81"),
    .binaryTarget(
      name: "MLKitVisionKit",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitVisionKit.xcframework.zip",
      checksum: "5b59fe31f9fea9f0cc2e55c05774a3ab6340b801f0b76562daddcf033b2ce1c8"),
    .binaryTarget(
      name: "MLKitImageLabelingCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitImageLabelingCommon.xcframework.zip",
      checksum: "97aa661301da28c6c2a1078e228d3e32a8db140c62a50fe150dc0e6101d45b11"),
    .binaryTarget(
      name: "MLKitObjectDetectionCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitObjectDetectionCommon.xcframework.zip",
      checksum: "fba933cf0f202ccb7c0fe4644cb9f57fe81337a767cd83e3a0ef41968ea9f3be"),
    .binaryTarget(
      name: "MLKitPoseDetectionCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitPoseDetectionCommon.xcframework.zip",
      checksum: "773aeae8eba643cb3b0907099d86965ca51133d6e31e3927e82441f791e2c3cb"),
    .binaryTarget(
      name: "MLKitSegmentationCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitSegmentationCommon.xcframework.zip",
      checksum: "d01c6f30a5fa0857ef8438094c3c9918b9009a5e17d4d11583ca4653f1502edd"),
    .binaryTarget(
      name: "MLKitTextRecognitionCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitTextRecognitionCommon.xcframework.zip",
      checksum: "5a4982c85238567529509aa6777e0aed0220f12aff7ab4a36b1cbd98a6f5eadf"),
    .binaryTarget(
      name: "MLKitXenoCommon",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitXenoCommon.xcframework.zip",
      checksum: "688fde391a5c9854f7aa9346e53c1150a0fd3e030dcc42bf442483f09a966a86"),
    .binaryTarget(
      name: "MLKitNaturalLanguage",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/MLKitNaturalLanguage.xcframework.zip",
      checksum: "d6acb4adf41529b347c1ccc8b57eebf33781535841de17e6b69a270e623e7112"),
    .binaryTarget(
      name: "SSZipArchive",
      url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/9.0.0-2/SSZipArchive.xcframework.zip",
      checksum: "b8edee5b17a115cd5e94174fa6e77dbe250f0677980efa5f69b52255e8747108"),
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
