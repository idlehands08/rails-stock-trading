source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'sass-rails', '>= 6'
gem 'puma', '~> 4.1'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.6.0', require: false
gem 'rest-client'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


gem 'devise'
gem 'hamlit-rails'
gem "tailwindcss-rails", "~> 0.5.1"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3'
  gem "capybara"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-rails'
  gem 'database_rewinder'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
  gem 'vcr'
  gem 'webmock'
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :production do 
  gem 'pg'
end
