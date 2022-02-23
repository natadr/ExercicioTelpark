require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require 'allure-cucumber'
require 'faker'

Capybara.register_driver :site_prism do |app|
    Capybara::Selenium::Driver.new(app, browser:  :chrome) 
end

Capybara.configure do |config|
    config.run_server = false
    Capybara.default_driver = :site_prism
    Capybara.page.driver.browser.manage.window.maximize  
    config.default_max_wait_time = 10  
    config.app_host = 'https://app.telpark.com' 
end