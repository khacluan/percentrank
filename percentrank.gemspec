# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'percentrank/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_percentrank"
  spec.version       = Percentrank::VERSION
  spec.authors       = ["khacluan"]
  spec.email         = ["dangluan20@gmail.com"]
  spec.description   = %q{Add Array#percentrank(value) and Range#percentrank(value).}
  spec.summary       = %q{This gem used to calculate excel's percentrank in ruby}
  spec.homepage      = "http://khacluan.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
end
