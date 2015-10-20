# motion-environment-settings

Create application settings that swap for a variety of environments.

## Installation

Add this line to your application's Gemfile:

    gem 'motion-environment-settings'

And then execute:

    $ bundle

## Usage

Create a YAML file of the settings you want configured by environment.

Example:

development.yml
```ruby
api_host: http://localhost
```

production.yml
```ruby
api_host: http://productionurl
```

By default, `motion-environment-settings` will look for these files in `your/app/root/config/environments`. You can customize this path by setting

```ruby
Motion::EnvironmentSettings.config_path = "your/custom/path"
```

in your Rakefile.
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
