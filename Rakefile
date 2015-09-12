$:.unshift("/Library/RubyMotion/lib")
require "motion/project/template/ios"
require "rake/hooks"

require "bundler"
Bundler.require

require "yaml"
require "./lib/motion-environment-settings"

Dir.glob("lib/tasks/*.rake").each { |r| import r }
