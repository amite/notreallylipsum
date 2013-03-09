# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'notreallylipsum/version'

Gem::Specification.new do |spec|
  spec.name          = "notreallylipsum"
  spec.version       = Notreallylipsum::VERSION
  spec.authors       = ["amite"]
  spec.email         = ["amit.erandole@gmail.com"]
  spec.description   = %q{generates pesudo lipsum}
  spec.summary       = %q{generates pesudo lipsum}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency('rspec')
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency('log4r', '>= 1.0.5')
end
