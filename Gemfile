# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.2.3'

gem 'active_model_serializers', '~> 0.10.14'
gem 'bootsnap', require: false
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'rails', '~> 7.1.3', '>= 7.1.3.2'
gem 'tzinfo-data', platforms: %i[windows jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri windows]
  gem 'factory_bot_rails', '~> 6.4', '>= 6.4.3'
  gem 'pry-byebug', '~> 3.10', '>= 3.10.1'
  gem 'rspec-rails', '~> 6.1', '>= 6.1.1'
  gem 'rubocop-rails', '~> 2.23', '>= 2.23.1'
end

group :test do
  gem 'database_cleaner-active_record', '~> 2.1'
  gem 'shoulda-matchers', '~> 6.1'
end
