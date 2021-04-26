
Pod::Spec.new do |s|
  s.name             = 'MoyaApiStracher'
  s.version          = '0.0.1'
  s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'
 
  s.description      = <<-DESC
This fantastic view changes its color gradually makes your app look fantastic!
                       DESC
 
  s.homepage         = 'https://github.com/chiragcloudus/MoyaApiStracher'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '<YOUR NAME HERE>' => 'chiragios.cloudus21@gmail.com' }
  s.source           = { :git => 'https://github.com/chiragcloudus/IMAGY.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'MoyaApiStracher/*.{swift,plist}'
 
end