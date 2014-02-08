# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cequel/devise/version'

Gem::Specification.new do |spec|
  spec.name          = "cequel-devise"
  spec.version       = Cequel::Devise::VERSION
  spec.authors       = ["Mat Brown"]
  spec.email         = ["mat.a.brown@gmail.com"]
  spec.description   = %q{Integration for Devise with the Cequel Cassandra ORM}
  spec.summary       = %q{Integrate Devise with Cequel}
  spec.homepage      = "https://github.com/cequel/cequel-devise"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"] + Dir["[A-Z]*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'cequel', '~> 1.0.0.rc4'
  spec.add_runtime_dependency 'orm_adapter-cequel', '~> 1.0.0.rc4'
  spec.add_runtime_dependency 'devise', '~> 3.2'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
