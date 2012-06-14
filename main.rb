ENV['RACK_ENV'] ||= 'development'

require "bundler"
require 'sinatra' 

Bundler.require :default, ENV['RACK_ENV'].to_sym

class Main < Sinatra::Base

  enable :sessions

  (Dir["./app/**/*.rb"]).each do |file|
    load file
  end

end



