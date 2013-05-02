# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'percentrank/version'

Gem::Specification.new do |spec|
  spec.name          = "percentrank"
  spec.version       = Percentrank::VERSION
  spec.authors       = ["asatou"]
  spec.email         = ["asatou@val.co.jp"]
  spec.description   = %q{Add Array#percentrank(value) and Range#percentrank(value).}
  spec.summary       = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
end
