# coding: utf-8

$:.push File.expand_path('../lib', __FILE__)
require 'react/sprockets/version'

Gem::Specification.new do |s|
  s.name = 'react-sprockets'
  s.version = React::Sprockets::VERSION
  s.summary = 'React/JSX adapter for the Sprockets asset pipeline.'
  s.description = 'Compile your JSX on demand or precompile for production.'
  s.homepage = 'https://github.com/mfellner/react-sprockets'
  s.license = 'APL 2.0'

  s.author = ['Maximilian Fellner']
  s.email = 'max.fellner@gmail.com'

  s.add_development_dependency 'bundler', '~> 1.7'
  s.add_development_dependency 'rspec', '~> 3.1'

  s.add_dependency 'tilt', '~> 1.4'
  s.add_dependency 'execjs', '~> 2.2'
  s.add_dependency 'react-source', '~> 0.12'

  s.files = Dir[
      'lib/**/*',
      'README.md',
      'LICENSE'
  ]

  s.require_paths = 'lib'
end
