Pod::Spec.new do |s|
  s.name         = "BSYAlertBox" 
  s.version      = "1.0.0"     
  s.license      = "MIT"       
  s.summary      = "BSYAlertBox 是一款多功能提示控件，支持居中/居左/居右/居上/居下等显示，具体可以看实现样例，可以自定义背景颜色/字体颜色等，希望大家喜欢并Star支持"

  s.homepage     = "https://github.com/baishiyun/BSYAlertBox" # 你的主页
  s.source       = { :git => "https://github.com/baishiyun/BSYAlertBox.git", :tag => "#{s.version}" }
  s.source_files = "BSYAlertBox/*.{h,m}"
  s.requires_arc = true 
  s.platform     = :ios, "7.0" 
  s.frameworks   = "UIKit", "Foundation"
  s.author             = { "白仕云" => "baishiyun@163.com" } 
  s.social_media_url   = "https://github.com/baishiyun" 

end