source 'https://rubygems.org'

gem 'rails', '4.2.0'
gem 'jquery-rails', '2.1.3'

gem 'sqlite3',      '1.3.7'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'uglifier',     '>= 1.0.3'
end

gem 'thin', '>= 1.5.1'
gem 'therubyracer'
gem 'simplecov',    '>= 0.7.1', :require => false, :group => :test

group :test do
  gem 'rspec'
  gem 'shoulda-matchers'
  gem 'capybara', '>= 2.1.0'
  gem 'selenium-webdriver'
  gem 'faker'
  gem 'autotest-standalone'
  gem 'autotest-growl'
  gem 'approvals', '>= 0.0.7'
end

# rspec-rails needs to be in the development group so that Rails generators work.
group :development, :test do
  gem 'rspec-rails', '>= 2.13.2'
end