source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# devise
gem 'devise'
# devise日本語化
gem 'devise-i18n'
gem 'devise-i18n-views'
# rails日本語対応
gem 'rails-i18n'
# faker
gem 'faker'

gem 'carrierwave',             '1.2.2'
gem 'mini_magick',             '4.9.4'

gem 'pry-rails'
gem 'rb-readline'

gem 'jquery-rails'

gem 'cocoon'

gem 'erb2haml'
gem 'haml-rails'

# pagination
gem 'kaminari'
gem 'kaminari-bootstrap'

# add tags
gem 'acts-as-taggable-on'

# AWS
# gem 'aws-ses'

gem 'fog', '1.42'
# Use Puma as the app server
gem 'puma', '~> 3.11'

# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'

# Use SCSS for stylesheets
gem 'bootstrap-sass', '3.4.1'
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', :require => false
gem 'font-awesome-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'rubocop', :require => false
  gem 'rubocop-rails'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  # gem 'fog', '1.42'
  # # Use Puma as the app server
  # gem 'puma', '~> 3.11'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
  gem 'factory_bot_rails'
  gem 'rspec_junit_formatter'
  gem 'webdrivers', '~> 3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', :platforms => %i[mingw mswin x64_mingw jruby]
