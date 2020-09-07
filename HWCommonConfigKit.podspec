#
# Be sure to run `pod lib lint HWCommonConfigKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HWCommonConfigKit'
  s.version          = '1.0.0'
  s.summary          = 'A short description of HWCommonConfigKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '教师端基础配置类Kit'

  s.homepage         = 'https://github.com/aThinkerbomb/HWCommonConfigKit.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '宇轩' => 'zyx466270590@outlook.com' }
  s.source           = { :git => 'https://github.com/aThinkerbomb/HWCommonConfigKit.git', :tag => '1.0.0' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
  s.ios.deployment_target = '9.0'

  s.source_files = 'HWCommonConfigKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HWCommonConfigKit' => ['HWCommonConfigKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency  'Masonry', '~> 1.1.0'
end
