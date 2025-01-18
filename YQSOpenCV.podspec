Pod::Spec.new do |s|
  s.name             = 'YQSOpenCV'
  s.version          = '1.0.0'
  s.summary          = 'OpenCV (Computer Vision) for iOS.'
  s.homepage         = 'http://opencv.org'
  s.description      = 'OpenCV: Open Source Computer Vision Library\r\nResources\r\nHomepage: https://opencv.org\r\nDocs: https://docs.opencv.org/master/\r\nQ&A forum: http://answers.opencv.org\r\nIssue tracking: https://github.com/opencv/opencv/issues'
  s.license          = { :type => '3-clause BSD', :text => 'By downloading, copying, installing or using the software you agree to this license...' }
  s.author           = { 'opencv.org' => 'opencv@opencv.org' }
  
  s.source           = { :http => 'https://github.com/opencv/opencv/releases/download/4.11.0/opencv-4.11.0-ios-framework.zip', :sha256 => '0f23c8dc08d73831f2a6f39f1d85914da7206a176ae6d8fe599f2ba5775f04ae' }
  
  s.platform         = :ios, '8.0'
  
  # 需要包含的头文件路径
  s.source_files     = 'opencv2.framework/Versions/A/Headers/**/*.{h,hpp}'
  
  # 公共头文件路径
  s.public_header_files = 'opencv2.framework/Versions/A/Headers/**/*.{h,hpp}'
  
  # vendored 框架
  s.vendored_frameworks = 'opencv2.framework'
  
  # 库文件
  s.libraries        = 'stdc++'
  
  # 必要的 iOS 框架
  s.frameworks       = 'Accelerate', 'AssetsLibrary', 'AVFoundation', 'CoreGraphics', 'CoreImage', 'CoreMedia', 'CoreVideo', 'Foundation', 'QuartzCore', 'UIKit'
  
  # ARC 是否启用
  s.requires_arc     = false
  
  # 头文件路径映射
  s.header_dir       = 'opencv2'
  s.header_mappings_dir = 'opencv2.framework/Versions/A/Headers/'
end
