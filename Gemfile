source 'https://rubygems.org'

branch = ENV.fetch("SOLIDUS_BRANCH", "master")

gem 'solidus', github: 'solidusio/solidus', branch: branch
gem 'solidus_auth_devise'

# Needed to help Bundler figure out how to resolve dependencies, otherwise it takes forever to
# resolve them
if branch == 'master' || Gem::Version.new(branch[1..-1]) >= Gem::Version.new('2.10.0')
  gem 'rails', '~> 6.0'
else
  gem 'rails', '~> 5.0'
end

# Asset compilation speed
gem 'mini_racer'
gem 'sassc-rails', platforms: :mri

# bourbon 5 doesn't work under sassc
# https://github.com/thoughtbot/bourbon/issues/1047
gem 'bourbon', '<7'

if ENV['DB'] == 'mysql'
  gem 'mysql2', '~> 0.4.10'
else
  gem 'pg', '~> 0.21'
end

group :development, :test do
  gem "rails-controller-testing"
  gem 'factory_bot', '> 4.10.0'
  gem 'listen'
  gem "pry-rails"
  gem 'ffaker'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gemspec
