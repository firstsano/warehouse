source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'dry-auto_inject'
gem 'dry-container'
gem 'figaro'
gem 'pg'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.0'
gem 'rails-settings-cached'
gem 'sass-rails', '~> 5.0'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :production do
  gem 'uglifier', '>= 1.3.0'
end

group :development do
  gem 'bullet', group: 'development'
  gem 'capistrano-rails'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', '~> 0.57.0', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'strong_migrations'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner'
  gem 'rspec-rails', '~> 3.7'
  gem 'shoulda-matchers', '~> 3.1'
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 4.0'
  gem 'faker', git: 'https://github.com/stympy/faker.git', branch: 'master'
end
