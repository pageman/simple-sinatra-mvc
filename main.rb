ENV['RACK_ENV'] ||= 'development'

require "bundler"
require 'sinatra' 

Bundler.require :default, ENV['RACK_ENV'].to_sym

enable :sessions
use Rack::Flash, :accessorize => [:notice, :error]

class Main < Sinatra::Base


  (Dir["./app/helpers/*.rb"].sort + Dir["./app/lib/*.rb"].sort + Dir["./app/controllers/*/*.rb"].sort).each do |file|
    load file
  end
  
  register Sinatra::Partial
  register Sinatra::Pages

  enable :partial_underscores

end
