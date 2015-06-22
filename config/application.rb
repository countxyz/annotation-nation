require File.expand_path('../boot', __FILE__)

require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module AnnotationNation
  class Application < Rails::Application
    config.autoload_paths += Dir["#{Rails.root}/app/models/polymorphic"]
    config.active_record.raise_in_transactional_callbacks = true
    config.time_zone = 'UTC'
  end
end
