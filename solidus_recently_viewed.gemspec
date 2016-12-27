# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'solidus_recently_viewed/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_recently_viewed'
  s.version     = SolidusRecentlyViewed.version
  s.summary     = 'Adds recently viewed products to Spree'
  s.description = s.summary
  s.required_ruby_version = '>= 2.1.0'

  s.authors     = ['Roman Smirnov', 'Brian Quinn', 'Allison Reilly']
  s.email       = 'acreilly3@gmail.com'
  s.license     = 'BSD-3'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = false

  s.add_dependency "solidus_core", [">= 1.0.0", "< 3"]

  s.add_development_dependency 'rspec-rails', '~> 3.2.0'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'capybara', '~> 2.5'
  s.add_development_dependency 'capybara-screenshot', '~> 1.0.11'
  s.add_development_dependency 'poltergeist', '~> 1.6.0'
  s.add_development_dependency 'sqlite3', '~> 1.3.10'
  s.add_development_dependency 'simplecov', '~> 0.9.0'
  s.add_development_dependency 'coffee-rails', '~> 4.0.0'
  s.add_development_dependency 'sass-rails', '~> 5.0.0'
  s.add_development_dependency 'database_cleaner', '1.4.0'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'rubocop', '>= 0.24.1'
  s.add_development_dependency 'sprockets-rails', '~> 2.0'
end
