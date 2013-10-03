# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redis_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "redis_helper"
  spec.version       = RedisHelper::VERSION
  spec.authors       = ["Mario Lavandero"]
  spec.email         = ["mario@mlavandero.org"]
  spec.description   = %q{Helps persist information in a Redis Server}
  spec.summary       = %q{A group of methods that are added to ActiveRecord to allow data to be stored in a Redis Database for certain periods of time.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
