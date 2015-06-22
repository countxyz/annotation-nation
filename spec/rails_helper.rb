ENV['RAILS_ENV'] ||= 'test'

require 'spec_helper'

require File.expand_path('../../config/environment', __FILE__)

require 'rspec/rails'
require 'shoulda/matchers'
require 'capybara/rails'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'database_cleaner'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.before(:suite)          { DatabaseCleaner.clean_with(:truncation) }
  config.before(:each)           { DatabaseCleaner.strategy = :transaction }
  config.before(:each, js: true) { DatabaseCleaner.strategy = :truncation  }
  config.before(:each)           { DatabaseCleaner.start                   }
  config.after(:each)            { DatabaseCleaner.clean                   }

  config.infer_spec_type_from_file_location!
  config.include FactoryGirl::Syntax::Methods

  Capybara.javascript_driver = :poltergeist
end
