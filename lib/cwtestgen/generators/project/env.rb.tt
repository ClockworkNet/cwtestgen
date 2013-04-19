require 'page-object'
require 'page-object/page_factory'
require 'faker'
require 'require_all'
require 'rspec-expectations'
require 'watir-webdriver'
require "watir-webdriver-performance"

World(PageObject::PageFactory)

# Global variables
$live_url          = ""
$admin_url         = ""
$default_email     = ""
$default_password  = ""

$log       = Logger.new(File.expand_path(File.dirname(File.dirname(__FILE__)))+'/logs/log.txt', 'daily')
$log.level = Logger::DEBUG

PageObject.javascript_framework = :jquery

case ENV['BROWSER']
  when 'chrome'
    browser = Watir::Browser.new :chrome
  else
  	browser = Watir::Browser.new :ff
end

Before do
  @browser = browser
  @browser.window.resize_to(1024, 768) 
end

at_exit do
  browser.close
end

