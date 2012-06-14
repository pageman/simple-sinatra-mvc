ENV['RACK_ENV'] ||= 'development'

require "bundler"
require 'sinatra' 

Bundler.require :default, ENV['RACK_ENV'].to_sym

class Main < Sinatra::Base

  enable :sessions
 
  (Dir["./app/helpers/*.rb"].sort + Dir["./app/lib/*.rb"].sort + Dir["./app/controllers/*.rb"].sort).each do |file|
    load file
  end

end



