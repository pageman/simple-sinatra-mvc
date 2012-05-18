Simple Sinatra MVC Template
============================

Use dep to install gems
-----------------------------
gem install dep && dep install 


Use shotgun to start app
-----------------------------
shotgun main.rb


Unit and acceptance tests 
-----------------------------
Ruby 1.9 includes minitest so it just makes test to use minitest instead of any other framework. 
It works and it is simple. Use:  

rake test

For acceptance tests, some example is also provided. Use: 

cucumber or rake features should work
