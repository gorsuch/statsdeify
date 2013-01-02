# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'statsdeify/version'

Gem::Specification.new do |gem|
  gem.name          = "statsdeify"
  gem.version       = Statsdeify::VERSION
  gem.authors       = ["Michael Gorsuch"]
  gem.email         = ["gorsuch@github.com"]
  gem.description   = %q{An experimental lib to transmute logs to `statsd` measurements.}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/gorsuch/statsdeify"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
end
