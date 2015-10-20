unless defined?(Motion::Project::Config)
  raise "This gem must be included in a RubyMotion project"
end

module Motion
  module EnvironmentSettings
    DEFAULT_CONFIG_PATH = "./config/environments"

    def self.config_path
      return @@config_path if defined?(@@config_path)
      puts "===== motion-environment-settings ===="
      puts "* No config path explicitly set, using default: #{DEFAULT_CONFIG_PATH}"
      puts "* Set your config path using `Motion::EnvironmentSettings.config_path=(\"your/path\") in your project's Rakefile"
      DEFAULT_CONFIG_PATH
    end

    def self.config_path=(new_config_path)
      @@config_path = new_config_path
    end
  end
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), "motion-environment-settings/*.rb")).each do |file|
    app.files.unshift(file)
  end
end

require "rake/hooks"
require_relative "motion-environment-settings/generator"

before :"build:simulator" do
  create_configuration
end

before :"build:device" do
  create_configuration
end

def create_configuration
  Motion::EnvironmentSettings::Generator.generate
end
