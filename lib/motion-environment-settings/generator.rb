module Motion
  module EnvironmentSettings
    class Generator
      def self.generate
        ENV["ENV"] = "development" if ENV["ENV"].nil?

        File.open("./app/settings.rb", "w") do |file|
          file.puts("class Settings")
          config.each do |k,v|
            file.puts("  def self.#{k}; \"#{v}\"; end")
          end
          file.puts("end")
        end

        Motion::Project::App.setup do |app|
          app.files += Dir.glob(File.join(app.project_dir, "app/settings.rb"))
        end
      end

      def self.config
        YAML.load(File.read(File.join(Motion::EnvironmentSettings.config_path, "#{ENV["ENV"]}.yml")))
      end
    end
  end
end
