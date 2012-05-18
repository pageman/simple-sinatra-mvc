require 'cucumber/rake/task'
require 'rake/testtask'


Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format progress"
end


Rake::TestTask.new do |t|
  t.pattern = "test/**/*_test.rb" 
end 
