require 'rubygems'
require 'bundler'
require 'pathname'
require 'logger'
require 'fileutils'
require 'sprockets'

require 'cucumber/rake/task'
require 'rake/testtask'


Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format progress"
end


Rake::TestTask.new do |t|
  t.pattern = "test/**/*_test.rb" 
end



ROOT        = Pathname(File.dirname(__FILE__))
LOGGER      = Logger.new(STDOUT)
BUNDLES     = %w(application.css style.css.scss)
BUILD_DIR   = ROOT.join("public")
SOURCE_DIR  = ROOT.join("app/assets")

task :compile do
  sprockets = Sprockets::Environment.new(ROOT) do |env|
    env.logger = LOGGER
  end

  sprockets.append_path(SOURCE_DIR.join('javascripts').to_s)
  sprockets.append_path(SOURCE_DIR.join('stylesheets').to_s)

  BUNDLES.each do |bundle|
    assets = sprockets.find_asset(bundle)
    prefix, basename = assets.pathname.to_s.split('/')[-2..-1]
    FileUtils.mkpath BUILD_DIR.join(prefix)

    assets.write_to(BUILD_DIR.join(prefix, basename))
    assets.to_a.each do |asset|
      # strip filename.css.foo.bar.css multiple extensions
      realname = asset.pathname.basename.to_s.split(".")[0..1].join(".")
      asset.write_to(BUILD_DIR.join(prefix, realname))
    end
  end
end

