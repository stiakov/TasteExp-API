source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'active_model_serializers', '~> 0.10.10'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise_token_auth', '~> 1.1', '>= 1.1.3'
gem 'faker', '~> 2.10', '>= 2.10.1'
gem 'hirb', '~> 0.7.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rack-cors', '~> 1.1', '>= 1.1.1'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'rubocop', '~> 0.79.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.9'
  gem 'shoulda-matchers', '~> 4.2'
end

group :development do
  gem 'better_errors', '~> 2.5', '>= 2.5.1'
  gem 'binding_of_caller', '~> 0.8.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
