# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'English'
require 'aptible/resource/version'

Gem::Specification.new do |spec|
  spec.name          = 'aptible-resource'
  spec.version       = Aptible::Resource::VERSION
  spec.authors       = ['Frank Macreery']
  spec.email         = ['frank@macreery.com']
  spec.description   = %q(Foundation classes for Aptible resource server gems)
  spec.summary       = %q(Foundation classes for Aptible resource server gems)
  spec.homepage      = 'https://github.com/aptible/aptible-resource'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.test_files    = spec.files.grep(/^spec\//)
  spec.require_paths = ['lib']

  # HyperResource dependencies
  spec.add_dependency 'uri_template', '>= 0.5.2'
  spec.add_dependency 'faraday',      '>= 0.8.6'
  spec.add_dependency 'json'

  spec.add_dependency 'fridge'
  spec.add_dependency 'activesupport'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'aptible-tasks'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 2.0'
  spec.add_development_dependency 'pry'
end
