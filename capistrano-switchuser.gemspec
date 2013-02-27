# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/switchuser/version'

Gem::Specification.new do |gem|
  gem.name          = "capistrano-switchuser"
  gem.version       = Capistrano::Switchuser::VERSION
  gem.authors       = ["Rob Eanes"]
  gem.email         = ["reanes@gmail.com"]
  gem.description   = %q{Provides a function to switch the capistrano ssh user at runtime}
  gem.summary       = gem.description
  gem.homepage      = "http://github.com/rhec/capistrano-switchuser"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_runtime_dependency "capistrano"
end
