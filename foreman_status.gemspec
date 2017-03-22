require File.expand_path('../lib/foreman_status/version', __FILE__)
require 'date'

Gem::Specification.new do |s|
  s.name        = 'foreman_status'
  s.version     = ForemanStatus::VERSION
  s.date        = Date.today.to_s
  s.license     = 'GPL-3.0'
  s.authors     = ['Shim Shtein']
  s.email       = ['sshtein@redhat.com']
  s.homepage    = 'TODO'
  s.summary     = 'TODO: Summary of ForemanStatus.'
  # also update locale/gemspec.rb
  s.description = 'TODO: Description of ForemanStatus.'

  s.files = Dir['{app,config,db,lib,locale}/**/*'] + ['LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rdoc'
end
