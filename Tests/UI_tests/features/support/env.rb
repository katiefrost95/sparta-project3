require 'capybara/cucumber'
require 'capybara/dsl'
require 'rspec'
require 'pry'
require_relative '../lib/nasa'


Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome)
end

Capybara.configure do |config|
  config.ignore_hidden_elements = false
  config.default_max_wait_time= 10
  config.match = :prefer_exact
  config.default_driver = :chrome
  config.app_host = 'http://localhost:9292/'
end

World(NasaSite)
