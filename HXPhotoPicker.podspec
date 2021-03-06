
Pod::Spec.new do |s|

  s.name         = "HXPhotoPicker"
  s.version      = "2.4.5"
  s.summary      = "照片/视频选择器 - 支持LivePhoto、GIF图片选择、自定义裁剪照片、3DTouch预览、浏览网络图片/网络视频 功能 - Imitation weibo photo/image picker - support for LivePhoto, GIF image selection, 3DTouch preview, browse the web image function"
  s.homepage     = "https://github.com/SilenceLove/HXPhotoPicker"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "SilenceLove" => "294005139@qq.com" }

  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/SilenceLove/HXPhotoPicker.git", :tag => "#{s.version}" }

  s.framework    = 'UIKit','Photos','PhotosUI'
  s.requires_arc = true
  s.default_subspec = 'Default'
  
  s.subspec 'Default' do |de|
    de.source_files = "HXPhotoPicker/**/*.{h,m}"
    de.resources    = "HXPhotoPicker/Resource/*.{png,xib,nib,bundle}"
  end
  
  s.subspec 'SDWebImage' do |sd|
    sd.source_files = "HXPhotoPicker/**/*.{h,m}"
    sd.resources    = "HXPhotoPicker/Resource/*.{png,xib,nib,bundle}"
    sd.dependency 'SDWebImage', '~> 5.0'
  end
  
  s.subspec 'YYWebImage' do |yy|
    yy.source_files = "HXPhotoPicker/**/*.{h,m}"
    yy.resources    = "HXPhotoPicker/Resource/*.{png,xib,nib,bundle}"
    yy.dependency 'YYWebImage', '~> 1.0.5'
  end

end
