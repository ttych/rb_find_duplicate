# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'find_duplicate/version'

Gem::Specification.new do |spec|
  spec.name          = 'find_duplicate'
  spec.version       = FindDuplicate::VERSION
  spec.authors       = ['Thomas Tych']
  spec.email         = ['thomas.tych@gmail.com']

  spec.summary       = 'duplicate files finder.'
  spec.description   = ''
  spec.homepage      = 'https://github.com/ttych/find_duplicate'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/ttych/find_duplicate'
  spec.metadata['changelog_uri'] = 'https://github.com/ttych/find_duplicate'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`
      .split("\x0")
      .reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'reek', '~> 5.4'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.74.0'
end
