require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-apple-ads-attribution"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = 'kenmaca'
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/kenmaca/react-native-apple-ads-attribution", :tag => "v#{s.version}" }
  s.source_files  = "ios/*.{h,m}"
  s.dependency "React"
end
