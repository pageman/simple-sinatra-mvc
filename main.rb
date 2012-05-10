require 'rubygems'
require 'active_support'
require 'active_record'
require 'sinatra'
require 'pony'
require 'sinatra/flash'
require 'rdiscount'
require 'sinatra/bundles'


SINATRA_ROOT = File.dirname(__FILE__)


enable :sessions

Dir["#{SINATRA_ROOT}/app/**/*.rb"].each do |file|
  require file
end
