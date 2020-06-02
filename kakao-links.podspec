require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "kakao-links"
  s.version      = package['version']
  s.summary      = "Kakao Links"

  s.authors      = { "kucic" => "punkblood9@gmail.com" }
  s.homepage     = "https://github.com/kucic/react-native-kakaolink"
  s.license      = package['license']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/kucic/react-native-kakaolink.git", :tag => "#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"

  s.static_framework = true

  s.dependency 'React'
  s.dependency 'KakaoOpenSDK', '~> 1.21.0'
end