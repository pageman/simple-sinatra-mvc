require 'rubygems'
require 'active_support'
require 'active_record'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/flash'

class Main < Sinatra::Base

  enable :sessions

  Dir["./app/**/*.rb"].each do |file|
    load file
  end

end

