#!/usr/bin/env ruby
# frozen_string_literal: true

# Verify that the build completed successfully
def verify_xcframeworks
  required_frameworks = [
    'MLKitBarcodeScanning',
    'MLKitFaceDetection',
    'MLKitTextRecognition',
    'MLKitTextRecognitionChinese',
    'MLKitTextRecognitionDevanagari',
    'MLKitTextRecognitionJapanese',
    'MLKitTextRecognitionKorean',
    'MLKitImageLabeling',
    'MLKitImageLabelingCustom',
    'MLKitObjectDetection',
    'MLKitObjectDetectionCustom',
    'MLKitPoseDetection',
    'MLKitPoseDetectionAccurate',
    'MLKitSegmentationSelfie',
    'MLKitLanguageID',
    'MLKitTranslate',
    'MLKitSmartReply',
    'MLImage',
    'MLKitCommon',
    'MLKitVision',
    'GoogleToolboxForMac'
  ]

  puts "Checking for XCFramework zip files..."
  missing = []

  required_frameworks.each do |framework|
    zip_file = "GoogleMLKit/#{framework}.xcframework.zip"
    if File.exist?(zip_file)
      size = File.size(zip_file)
      puts "✓ #{framework}.xcframework.zip (#{size} bytes)"
    else
      puts "✗ #{framework}.xcframework.zip - NOT FOUND"
      missing << framework
    end
  end

  # Check for bundles (some may be optional if model is embedded in framework)
  bundles = [
    'GoogleMVFaceDetectorResources.bundle.zip',
    'MLKitTextRecognitionResources.bundle.zip',  # Optional - model embedded in MLKitTextRecognitionCommon framework
    'MLKitImageLabelingResources.bundle.zip',
    'MLKitObjectDetectionResources.bundle.zip',
    'MLKitObjectDetectionCommonResources.bundle.zip',  # Optional
    'MLKitTranslate_resource.bundle.zip',
    'MLKitXenoResources.bundle.zip',
    'PredictOnDevice_resource.bundle.zip'
  ]

  bundles_missing = []
  bundles.each do |bundle|
    bundle_path = "GoogleMLKit/#{bundle}"
    if File.exist?(bundle_path)
      size = File.size(bundle_path)
      puts "✓ #{bundle} (#{size} bytes)"
    else
      puts "⚠ #{bundle} - NOT FOUND (optional if model embedded)"
      bundles_missing << bundle
    end
  end

  if missing.empty? && bundles_missing.empty?
    puts "\n✓ All XCFrameworks and bundles built successfully!"
    return true
  elsif missing.empty?
    puts "\n✓ All XCFrameworks built successfully!"
    puts "⚠ Note: #{bundles_missing.length} bundle(s) not found (may be optional)"
    bundles_missing.each { |b| puts "  - #{b}" }
    return true  # Don't fail if only missing bundles
  else
    puts "\n✗ Missing XCFrameworks: #{missing.join(', ')}"
    return false
  end
end

# Verify Package.swift syntax
def verify_package_swift
  puts "\nVerifying Package.swift syntax..."
  result = system('swift package dump-package > /dev/null 2>&1')

  if result
    puts "✓ Package.swift is valid"
    return true
  else
    puts "✗ Package.swift has syntax errors"
    puts "Run: swift package dump-package"
    return false
  end
end

# Verify xcframework-maker is built
def verify_xcframework_maker
  puts "\nChecking xcframework-maker..."
  maker_path = 'xcframework-maker/.build/release/make-xcframework'

  if File.exist?(maker_path) && File.executable?(maker_path)
    puts "✓ xcframework-maker is built and ready"
    return true
  else
    puts "✗ xcframework-maker not found or not executable"
    puts "Run: make bootstrap-builder"
    return false
  end
end

# Verify Info.plist files exist
def verify_info_plists
  puts "\nChecking Info.plist files..."
  required_plists = [
    'MLKitCommon-Info.plist',
    'MLKitBarcodeScanning-Info.plist',
    'MLKitFaceDetection-Info.plist',
    'MLKitVision-Info.plist',
    'MLImage-Info.plist',
    'MLKitTextRecognition-Info.plist',
    'MLKitTextRecognitionChinese-Info.plist',
    'MLKitTextRecognitionDevanagari-Info.plist',
    'MLKitTextRecognitionJapanese-Info.plist',
    'MLKitTextRecognitionKorean-Info.plist',
    'MLKitImageLabeling-Info.plist',
    'MLKitImageLabelingCustom-Info.plist',
    'MLKitObjectDetection-Info.plist',
    'MLKitObjectDetectionCustom-Info.plist',
    'MLKitPoseDetection-Info.plist',
    'MLKitPoseDetectionAccurate-Info.plist',
    'MLKitSegmentationSelfie-Info.plist',
    'MLKitLanguageID-Info.plist',
    'MLKitTranslate-Info.plist',
    'MLKitSmartReply-Info.plist'
  ]

  missing = []
  required_plists.each do |plist|
    path = "Resources/#{plist}"
    if File.exist?(path)
      puts "✓ #{plist}"
    else
      puts "✗ #{plist} - NOT FOUND"
      missing << plist
    end
  end

  if missing.empty?
    puts "✓ All Info.plist files present"
    return true
  else
    puts "✗ Missing Info.plist files: #{missing.join(', ')}"
    return false
  end
end

# Main execution
puts "=== Build Verification ==="
puts ""

results = {
  info_plists: verify_info_plists,
  xcframework_maker: verify_xcframework_maker,
  xcframeworks: verify_xcframeworks,
  package_swift: verify_package_swift
}

puts ""
puts "=== Summary ==="

if results.values.all?
  puts "✓ All checks passed!"
  exit 0
else
  puts "✗ Some checks failed"
  results.each do |check, passed|
    status = passed ? "✓" : "✗"
    puts "  #{status} #{check}"
  end
  exit 1
end
