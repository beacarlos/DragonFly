Pod::Spec.new do |spec|

  spec.name = "DragonFly"
  spec.version = "1.0.1"
  spec.summary = "DragonFly is a framework that facilitates the use of colors in everyday life."
  spec.description = "DragonFly is a framework that facilitates the use of colors in everyday life."
  spec.homepage = "https://github.com/beacarlos/DragonFly"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.authors = 'Beatriz Carlos', 'Brena Amorim'
  spec.ios.deployment_target = "14.5"
  spec.source = { :git => "https://github.com/beacarlos/DragonFly.git", :tag => spec.version }
  spec.source_files = "DragonFly/*.{h,m}"
  spec.swift_version = "5.3"

end