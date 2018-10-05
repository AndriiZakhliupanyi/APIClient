Pod::Spec.new do |s|

  s.name         = "YALAPIClient"
  s.version      = '2.0'
  s.summary      = "Lightweight networking framework."
  s.homepage     = "https://github.com/Yalantis/APIClient.git"
  s.license          = { :type => "MIT", :file => "License" }
  s.authors      = { 'Eugene Andreyev' => 'eugene.andreyev@yalantis.com' }
  s.source       = { :git => "git@github.com:Yalantis/APIClient.git", :tag => s.version }
  s.frameworks = 'Foundation'
  s.ios.deployment_target = '10.0'
  s.dependency 'YALResult', '1.0'
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = "APIClient/Default/**/*.swift"
  end

  s.subspec 'Alamofire' do |ss|
    ss.dependency 'YALAPIClient/Core'
    ss.dependency 'Alamofire', '~> 4.6' 
    ss.source_files = "APIClient/Alamofire/*"
  end

end