Simple Sinatra MVC Template
============================

What's included
-----------------------------
Sprockets, HAML, SASS, PostgreSQL gem (pg), coffee-script and more


``` bash
$ git clone --depth 1 git://github.com/bridgeutopia/simple-sinatra-mvc.git myapp
$ rm -r myapp/.git && rm myapp/README.md
```


Use bundler to install gems
-----------------------------
bundle install


Start the app
-----------------------------

``` bash
$ rackup
```

Unit and acceptance tests 
-----------------------------
Ruby 1.9 includes minitest so it just makes test to use minitest instead of any other framework. 
It works and it is simple. Use:  

``` bash
$ rake test
```

For acceptance tests, some example is also provided. Use: 

cucumber or rake features should work

Configuration
-----------------------------

``` bash
$ mv config/database.yml.example config/database.yml 
```

Update database.yml


By default, we use PostgreSQL. 

You may have to update config.ru as needed. 

The Rakefile may require some updates for sprockets. As you add more assets, you would need to precompile those for production.


Rake Tasks
-----------------------------

``` bash
$ rake -T
```

rake assets:compile       # Pre-compile assets

rake db:create            # create the database

rake db:create_migration  # create an ActiveRecord migration in ./db/migrate

rake db:migrate           # migrate your database

rake features             # Run Cucumber features

rake test                 # Run tests   


To create a database for a specific environment, do: 

``` bash
$ rake db:create RACK_ENV=production 
```

The default environment is "development"

To create a migration file called "create_pages", do: 

``` bash
$ rake db:create_migration NAME=create_pages
```

To do migration: 

``` bash
$ rake db:migrate RACK_ENV=production 
```

The default is development so this should just work:

``` bash
$ rake db:migrate
```

TO DO 
-----------------------------
1. Write more tasks for active record

2. Add more helpers 
