# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)
require 'solidus_recently_viewed/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_recently_viewed'
  s.version     = SolidusRecentlyViewed.version
  s.summary     = 'Adds recently viewed products to Spree'
  s.description = s.summary

  s.required_ruby_version = '~> 2.5'

  s.authors     = ['Roman Smirnov', 'Brian Quinn', 'Allison Reilly']
  s.email       = 'acreilly3@gmail.com'
  s.license = 'BSD-3-Clause'

  s.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.test_files = Dir['spec/**/*']
  s.bindir = "exe"
  s.executables = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  if s.respond_to?(:metadata)
    s.metadata["homepage_uri"] = s.homepage if s.homepage
    s.metadata["source_code_uri"] = "https://github.com/solidusio-contrib/solidus_recently_viewed"
  end

  s.add_dependency 'coffee-script'
  s.add_dependency 'deface'
  s.add_dependency 'sassc-rails'
  s.add_dependency 'solidus_core', ['>= 2.4.0', '< 4']
  s.add_dependency 'solidus_support', '~> 0.8'


  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'solidus_dev_support'
end
