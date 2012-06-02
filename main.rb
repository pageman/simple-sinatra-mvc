require 'rubygems'
require 'active_support'
require 'active_record'
require 'sinatra'
require 'sinatra/flash'
require 'rdiscount'


SINATRA_ROOT = File.dirname(__FILE__)


require 'sinatra/base'

class Main < Sinatra::Base

  enable :sessions

  Dir["#{SINATRA_ROOT}/app/**/*.rb"].each do |file|
    load file
  end

  run! if app_file == $0
end
