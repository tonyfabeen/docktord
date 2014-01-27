#encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docktord/version'

Gem::Specification.new do |spec|
  spec.name          = "docktord"
  spec.version       = Docktord::VERSION
  spec.authors       = ["Tony Fabeen"]
  spec.email         = ["tony.fabeen@gmail.com"]
  spec.description   = "Docker monitoring Agent"
  spec.summary       = "Docker monitoring Agent"
  spec.homepage      = "https://github.com/tonyfabeen/docktord"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "docker-api"
  spec.add_runtime_dependency "timers"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-expectations"

end
