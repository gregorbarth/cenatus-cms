source 'http://rubygems.org'

#gem 'rails', '3.1.0'
# https://github.com/sferik/rails_admin/issues/682
#gem 'rails', :git => 'git://github.com/rails/rails.git', :branch => '3-1-stable'
gem 'rails', '~> 3.2.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# gem 'mysql2', '~> 0.3.10'
gem 'pg'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3 1.3.3'
# gem 'aws-s3', :require => 'aws/s3'


# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:

gem "haml", ">= 3.0.0"
gem "haml-rails"
gem "jquery-rails"
gem 'devise'
gem "rails_admin", :git => "git://github.com/sferik/rails_admin.git"
#no longer required as compass-rails in assets below.
#gem 'compass'
gem 'aws-sdk'    
gem 'paperclip', :git => 'git://github.com/thoughtbot/paperclip.git'
gem "friendly_id", "~> 3.2.1"
gem 'twitter'
gem 'acts_as_indexed'
gem 'RedCloth'
gem 'acts-as-taggable-on'
gem 'rails_admin_tag_list_field', :git => 'https://github.com/kryzhovnik/rails_admin_tag_list_field.git'
gem 'acts_as_tree'
gem 'dalli'
gem 'thin'
gem "memcachier"


group :assets do
  gem 'compass-rails','~> 1.0.0.rc.2'
  #Compass plugins optional below
  #gem 'compass-colors'
  #gem 'sassy-buttons'
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-script'
  gem 'uglifier'
end

group :development do
  gem "heroku_plus"
  gem 'guard'
  gem 'guard-rspec'
  gem 'rb-fsevent'
  gem 'growl'
  # gem "taps"
  # gem "sqlite3", "=1.3.3"
  # gem "sqlite3-ruby", "=1.3.3"
  gem "rspec-rails"
end

group :test do
  gem "rspec-rails"
  gem "cucumber-rails"
  gem "capybara"
  gem "execjs" #for CI on Heroku
  gem "therubyracer" #for CI on Heroku
  # gem 'pg' #for CI on Heroku
  gem "fastercsv"
  gem "faker"
  gem 'factory_girl'
  gem 'factory_girl_rails'


end

group :production do
  # gem 'pg'
end


