$:.unshift("./lib/")
require "./lib/motion-environment-settings/generator"

before :"build:simulator" do
  create_configuration
end

before :"build:device" do
  create_configuration
end

def create_configuration
  Motion::EnvironmentSettings::Generator.generate
end
