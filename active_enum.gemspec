# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_enum/version'

Gem::Specification.new do |spec|
  spec.name          = "active_enum"
  spec.version       = ActiveEnum::VERSION
  spec.authors       = ["Dale Stevens"]
  spec.email         = ["dale@twilightcoders.net"]
  spec.homepage      = "https://github.com/twilightcoders/active_enum"
  spec.summary       = %q{Adds true enumeration support to ActiveRecord.}
  spec.description   = %q{ActiveRecord lacks solid meaniningful support for true enumeration in databases. The best, most efficient enumerations are stored as integers, however numbers are often less meaningful to humans. To combat this, ActiveEnum aims to converts quickly and efficiently between different formats when reading from and writing to a database.}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
