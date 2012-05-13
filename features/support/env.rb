# Generated by cucumber-sinatra. (<%= Time.now %>)

ENV['RACK_ENV'] = 'test'
require File.join(File.dirname(__FILE__), '..', '..', './main.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'


Capybara.app = Sinatra::Application

World do
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end


