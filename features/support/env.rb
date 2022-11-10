require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "os"

require_relative "helpers"
World(Helpers)

case ENV["BROWSER"]
when "firefox"
    @driver = :selenium
when "chrome"
    @driver = :selenium_chrome
when "headless"
    @driver = :selenium_chrome_headless
else
    puts "Invalid Browser"
end

Capybara.configure do |config|
    config.default_driver = @driver
    config.app_host = "http://192.168.99.100:8080"
    config.default_max_wait_time = 10
end