Pod::Spec.new do |s|
  s.name         = "PanicAR"
  s.version      = "2.1.2672"
  s.summary      = "Location-based Augmented Reality Framework for point of interest visualization."
  s.homepage     = "http://github.com/doPanic/PanicAR"
  s.license      = {
     :type => 'proprietary',
     :text => 'http://dopanic.com/downloads/ar/PanicARLicenseTermsEN.pdf'
  }
  s.author       = { "Andreas Zeitler" => "azeitler@dopanic.com" }
  s.source       = { 
    :git => "https://github.com/doPanic/PanicAR.git",
    :tag => "v#{s.version.to_s}"
  }
  s.platform        = :ios, '6.0'
  s.frameworks      =  'AVFoundation', 'CoreLocation', 'CoreMotion', 'CoreVideo', 'CoreMedia', 'CoreGraphics', 'UIKit', 'Foundation', 'QuartzCore', 'MapKit', 'PanicARKit'
  s.xcconfig        = { 
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/PanicAR/Framework"'
  }
  s.preserve_paths  = 'Framework/PanicARKit.framework', 'Framework/PanicARKitResources.bundle'
  s.resources       = 'Framework/PanicARKitResources.bundle'
end
