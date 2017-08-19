# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'impact_space/version'

Gem::Specification.new do |spec|
  spec.name          = "impact_space"
  spec.version       = ImpactSpace::VERSION
  spec.authors       = ["Pavel Kozlov"]
  spec.email         = ["loadkpi@gmail.com"]

  spec.summary       = %q{Ruby client for the ImpactSpace API}
  spec.description   = %q{Ruby client for the Wikipedia API}
  spec.homepage      = "https://github.com/loadkpi/impact_space"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'spyke', "~> 5.0"
  spec.add_dependency 'faraday'
  spec.add_dependency 'multi_json'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "vcr", "~> 3.0"
end
