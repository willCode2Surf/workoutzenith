source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'colored'
gem "strong_parameters"
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end
gem 'jquery-rails'

# structures
gem 'json'
gem 'multi_json'
gem "active_model_serializers", :git => "git://github.com/josevalim/active_model_serializers.git"

# gem "eventmachine", "1.0.0.beta.4.1"

# use thin instead of WEBrick
gem "thin"


# MongoDB..
gem 'bson_ext'
gem 'mongoid'

gem "haml"
gem "haml-rails", :group => :development
gem "bootstrap-sass", ">= 2.0.3"

gem 'inherited_resources'

group :development, :test do
  gem 'guard'
  gem 'growl'
  gem 'rspec-rails', '2.8.1'
  gem 'webrat', '0.7.3'
  gem 'factory_girl_rails'
  gem 'rdoc', '~> 3.12'
  gem "database_cleaner"
  gem "mongoid-rspec"
  gem "pry-rails"
end

group :test do
  gem 'jasminerice', :git => "https://github.com/bradphelan/jasminerice.git", :branch => 'master'
  gem 'guard-jasmine', :git => "https://github.com/netzpirat/guard-jasmine.git", :branch => 'master'
  gem 'capybara'
  gem 'fivemat'
  gem 'json_spec'
end
