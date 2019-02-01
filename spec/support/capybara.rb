require 'capybara/rspec'
require 'capybara/rails'
require 'capybara-screenshot/rspec'

RSpec.configure do |config|
  Capybara.save_and_open_page_path = ENV['CIRCLE_ARTIFACTS'] if ENV['CIRCLE_ARTIFACTS']

  Capybara.javascript_driver = :selenium_chrome_headless

  config.before(:each, :js) do
    page.driver.browser.manage.window.maximize
  end
end
