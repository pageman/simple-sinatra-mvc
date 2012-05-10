require 'rubygems'


FileUtils.mkdir_p 'log' unless File.exists?('log')
log = File.new("log/sinatra.log", "a")
$stdout.reopen(log)
$stderr.reopen(log)

disable :run, :reload
set :environment, :production
set :views, File.dirname(__FILE__) + 'views'
require 'main'
run Sinatra::Application

