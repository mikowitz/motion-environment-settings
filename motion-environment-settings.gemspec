# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "motion-environment-settings/version"

Gem::Specification.new do |s|
  s.name = "motion-environment-settings"
  s.version = Motion::EnvironmentSettings::Version
  s.summary = "Manage environment settings for a RubyMotion project"
  s.description = "Manage environment settings for a RubyMotion project"
  s.authors = ["Michael Berkowitz"]
  s.email = ["michael.berkowitz@gmail.com"]
  s.license = "MIT"
end
