require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

=begin
This configuration is made to specify the environment where the tests are going to run
It is possible to change the run environment in the cucumber.yml file changing the default atribute profiles:
-p qa = Run on QA environment
-p homolog = Run on Homologation environment

The host address of the environments are located in the yml files in the environments folder
=end
ENVIRONMENT = ENV['ENVIRONMENT']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml")

#Adding custom modules
World(Helper)
World(Pages)

#Capybara configuration settings
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['base_url']
    config.default_max_wait_time = 10
end
