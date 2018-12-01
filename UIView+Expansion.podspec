#
#  Be sure to run `pod spec lint UIViewEx.podspec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|



  s.name         = "UIView+Expansion"
  s.version      = "0.0.1"
  s.summary      = "ios 使用工具类"



  #s.description  = <<-DESC
  #                 DESC

  s.homepage     = "https://github.com/shenhzou654321/UIViewEx"

  s.license      = { :type => "BSD", :file => "LICENSE" }  
  s.author             = { "me" => "jiang" }

  s.source       = { :git => "https://github.com/shenhzou654321/UIViewEx/UIViewEx.podspec.git", :tag => "#{s.version}" }

  s.source_files  = "**/*.{h,m}"
  #s.exclude_files = "Classes/Exclude"
  #spec.public_header_files = "UIView+Expansion.h"        #需要对外导出的头文件  此处为本地验证
  s.requires_arc     = true                                       #ARC
  s.pod_target_xcconfig = { "ONLY_ACTIVE_ARCH" => "No" }          #这个必须有，不要修改

end
