source 'https://rubygems.org'

gem 'rails', '3.2.6'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'

# structures
gem 'json'
gem 'multi_json'
gem 'active_model_serializers', :github => 'radiumsoftware/active_model_serializers'

# use thin instead of WEBrick
gem 'thin'

# MongoDB..
gem 'bson_ext'
gem 'mongoid'

gem "haml", ">= 3.1.4"
gem "haml-rails", ">= 0.3.4", :group => :development
gem "bootstrap-sass", ">= 2.0.3"

gem 'inherited_resources'

group :development, :test do
  gem 'guard'
  gem 'growl'
  gem 'rspec-rails', '2.8.1'
  gem 'webrat', '0.7.3'
  gem 'factory_girl_rails', '1.7.0'
  gem 'rdoc', '~> 3.12'
  gem "database_cleaner"
  gem "mongoid-rspec"
  gem "pry-rails", "~> 0.1.6"
end

group :test do
  gem 'jasminerice', :git => "https://github.com/bradphelan/jasminerice.git", :branch => 'master'
  gem 'guard-jasmine', :git => "https://github.com/netzpirat/guard-jasmine.git", :branch => 'master'
  gem 'capybara',          '~> 1.1.2'
  gem 'fivemat'
  gem 'json_spec'
end
