# frozen_string_literal: true

Capybara.javascript_driver = (ENV['CAPYBARA_DRIVER'] || :selenium_headless).to_sym
