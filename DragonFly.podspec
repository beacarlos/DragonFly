Pod::Spec.new do |spec|

  spec.name = "DragonFly"
  spec.version = "1.0.0"
  spec.summary = "A short description of DragonFly."
  spec.description = "A complete description of DragonFly."
  spec.homepage = "https://github.com/beacarlos/DragonFly"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.author = "Beatriz Carlos"
  spec.ios.deployment_target = "14.5"
  spec.source = { :git => "https://github.com/beacarlos/DragonFly.git", :tag => spec.version }
  spec.source_files = "DragonFly/*.{h,m}"
  spec.swift_version = "5.3"

end