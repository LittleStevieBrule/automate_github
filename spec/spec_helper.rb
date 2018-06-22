require 'rspec'
require 'selenium-webdriver'
require 'page-object'

require_relative '../lib/config'
require_relative '../lib/landing_page'
require_relative '../lib/login_page'
require_relative '../lib/main_page'

require 'pry'


RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

Selenium::WebDriver::Firefox.driver_path = 'drivers/firefox/geckodriver'
driver = Selenium::WebDriver.for :firefox
driver.get 'https://www.github.com/'
Config.instance.driver = driver

at_exit { driver.quit }
