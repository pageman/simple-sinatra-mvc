configure do
  require 'yaml'
  dbconfig = YAML::load(File.open('database.yml'))
  ActiveRecord::Base.establish_connection(dbconfig)
end

