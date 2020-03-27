# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.0'

gem 'devise'

gem 'devise-i18n'

gem 'rails-i18n', '~> 5.1'

gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'

gem 'bootsnap'

gem 'listen'

gem 'bootstrap', '~> 4.4.1'

gem 'carrierwave'

gem 'rmagick'

gem 'fog-aws'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3'
  gem 'letter_opener_web'
end
