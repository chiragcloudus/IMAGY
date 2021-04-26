
Pod::Spec.new do |s|
  s.name             = 'MoyaApiStracher'
  s.version          = '0.0.1'
  s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'
 
  s.description      = <<-DESC
This fantastic view changes its color gradually makes your app look fantastic!
                       DESC
  s.version       = '4.2'
  s.homepage         = 'https://github.com/chiragcloudus/IMAGY'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cp' => 'chiragios.cloudus21@gmail.com' }
  s.source           = { :git => 'https://github.com/chiragcloudus/IMAGY.git', :tag => '0.0.1' }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'MoyaApiStracher/*.{swift,plist}'
 
end