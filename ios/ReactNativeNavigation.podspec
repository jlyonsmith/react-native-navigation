require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name         = "ReactNativeNavigation"
  s.version      = package['version']
  s.summary      = "A Native Navigation Solution for React Native"

  s.authors      = "Wix"
  s.homepage     = "https://github.com/jlyonsmith/react-native-navigation.git#readme"
  s.license      = package['license']
  s.platform     = :ios, "9.0"

  s.module_name  = 'ReactNativeNavigation'

  s.source       = { :git => "https://github.com/jlyonsmith/react-native-navigation.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"
  s.exclude_files  = ""

  s.dependency 'React'
  s.frameworks = 'UIKit'
end
