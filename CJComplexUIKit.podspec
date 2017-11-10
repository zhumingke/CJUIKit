Pod::Spec.new do |s|

  s.name         = "CJComplexUIKit"
  s.version      = "0.0.2"
  s.summary      = "自定义的稍微复杂的UI"
  s.homepage     = "https://github.com/dvlproad/CJUIKit"

  s.description  = <<-DESC
                  *、CJDataScrollView：带数据的列表视图或集合视图(常用于搜索、图片选择)

                   A longer description of CJPopupAction in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC
  

  #s.license      = {
  #  :type => 'Copyright',
  #  :text => <<-LICENSE
  #            © 2008-2016 Dvlproad. All rights reserved.
  #  LICENSE
  #}
  s.license      = "MIT"

  s.author   = { "dvlproad" => "" }

  s.platform     = :ios, "7.0"
 
  s.source       = { :git => "https://github.com/dvlproad/CJUIKit.git", :tag => "CJComplexUIKit_0.0.2_1" }
  s.source_files  = "CJComplexUIKit/*.{h,m}"

  s.frameworks = "UIKit"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"


  



  # 带数据的列表视图或集合视图(常用于搜索、图片选择)
  s.subspec 'CJDataScrollView' do |ss|
    ss.subspec 'SearchScrollView' do |sss|
      sss.source_files = "CJComplexUIKit/CJDataScrollView/SearchScrollView/**/*.{h,m}"

      # 搜索功能需要依赖的库
      sss.dependency 'CJBaseUIKit/CJCollectionView/MyEqualCellSizeCollectionView'
      sss.dependency 'CJBaseUtil/CJDataUtil', '~> 0.1.1'
      sss.dependency 'NSOperationQueueUtil', '~> 0.0.1'
    end

    ss.subspec 'ImagePickerCollectionlView' do |sss|
      sss.source_files = "CJComplexUIKit/CJDataScrollView/ImagePickerCollectionlView/**/*.{h,m}"
      sss.resources = "CJComplexUIKit/CJDataScrollView/ImagePickerCollectionlView/**/*.{png,xib,bundle}"
      sss.frameworks = "MediaPlayer"

      # 图片选择功能需要依赖的库
      sss.dependency 'JGActionSheet'
      sss.dependency 'CJBaseUIKit/UIImage+CJCategory'
      sss.dependency 'CJBaseUIKit/CJCollectionView/MyEqualCellSizeCollectionView'
      sss.dependency 'CJBaseUIKit/CJCollectionView/CJBaseCollectionViewCell'

      sss.dependency 'CJMedia/CJValidateAuthorizationUtil', "~> 0.0.4"
      sss.dependency 'CJMedia/MySingleImagePickerController', "~> 0.0.4"
      sss.dependency 'CJMedia/CJPhotoBrowser', "~> 0.0.4"

      sss.dependency 'CJFile/CJFileManager', "~> 0.0.6"
      sss.dependency 'CJNetwork/AFNetworkingUploadComponent', "~> 0.1.3"
      
    end

    
  end





end