require 'rubygems'
require 'bundler'
Bundler.require
Bundler.require :default, ENV['RACK_ENV'].to_sym

require "sinatra/reloader" if ENV['RACK_ENV']=='development' 
ENV['RACK_ENV'] ||= 'development'

require './main'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'app/assets/javascripts'
  environment.append_path 'app/assets/stylesheets'
  run environment
end

map '/' do
  run Sinatra::Application
end
