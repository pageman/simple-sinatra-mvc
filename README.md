Simple Sinatra MVC Template
============================

Use dep to install gems
-----------------------------
gem install dep && dep install 


Use shotgun to start app
-----------------------------
shotgun main.rb


Acceptance tests 
-----------------------------
Ruby 1.9 includes minitest so it just makes test to use minitest instead of any other framework. 
It works and it is simple. Use:  

rake test

If for some reason, you have prefer cucumber, some example is also provided. Use: 

cucumber or rake features should work
