Simple Sinatra MVC Template
============================


What's included
-----------------------------
Sprockets
HAML
SASS

Use bundler to install gems
-----------------------------
bundle install


Start the app
-----------------------------
rackup

Unit and acceptance tests 
-----------------------------
Ruby 1.9 includes minitest so it just makes test to use minitest instead of any other framework. 
It works and it is simple. Use:  

rake test

For acceptance tests, some example is also provided. Use: 

cucumber or rake features should work

Configuration
-----------------------------
You may have to update config.ru as needed. 

