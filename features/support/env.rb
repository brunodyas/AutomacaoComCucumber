require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'webdrivers'
require 'rspec'
require 'selenium-webdriver'

World(Cabybara::DSL)
World(Cabybara::RSpecMatchers)

Capybara.register_driver :selenium do |driver|
    Capybara::Selenium::Driver.new(driver, :browser => :chrome)
end


Capybara.configure do
    Capybara.default_driver = :selenium
    Capybara.page.driver.browser.manage.window.maximize
    Capybara.default_max_wait_time = 10
    Capybara.app_host = 'https://www.uol.com.br'
end