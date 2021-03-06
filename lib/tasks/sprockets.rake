require 'pathname'
require 'logger'
require 'fileutils'
require 'sprockets'

ROOT = Pathname.new('./')
LOGGER = Logger.new(STDOUT)
BUNDLES = %w(application.css style.css.scss application.js)
BUILD_DIR = ROOT.join("public")
SOURCE_DIR = ROOT.join("app/assets")

desc "Pre-compile assets"
namespace :assets do 
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

end

