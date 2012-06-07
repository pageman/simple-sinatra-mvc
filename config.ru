require 'rubygems'
require 'bundler'
Bundler.require
require "sinatra/reloader" if development?
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
