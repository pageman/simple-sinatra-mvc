require 'rubygems'
require 'sinatra'

root_dir = File.dirname(__FILE__)

set :environment, :production
set :root,  root_dir

app_file = File.join(root_dir, 'main.rb')
require app_file

disable :run

FileUtils.mkdir_p 'log' unless File.exists?('log')
log = File.new("log/sinatra.log", "a")
$stdout.reopen(log)
$stderr.reopen(log)

run Sinatra::Application

