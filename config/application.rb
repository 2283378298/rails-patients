require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Patients
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
    config.i18n.enforce_available_locales = true
    config.i18n.default_locale = :"zh-CN"
    config.time_zone = 'Asia/Shanghai'
    config.active_record.default_timezone = :local
  end
end

# ==


#     config.i18n.default_locale = :"zh-CN"
#     config.time_zone = 'Asia/Shanghai'
#     config.active_record.default_timezone = :local
#     config.autoload_paths += Dir["#{config.root}/app/models/ddb"]
#     config.autoload_paths += Dir["#{config.root}/app/models/error"]
#     config.autoload_paths += Dir["#{config.root}/app/models/oauth"]
#     config.autoload_paths += Dir["#{config.root}/app/models/orders"]
#     config.autoload_paths += Dir["#{config.root}/app/models/product"]
#     config.autoload_paths += Dir["#{config.root}/app/models/sale"]
#     config.autoload_paths += Dir["#{config.root}/app/models/stock"]
#     config.autoload_paths += Dir["#{config.root}/app/models/suppliers"]

#     config.sass.load_paths << File.expand_path('../../vendor/assets/stylesheets/')
#     config.assets.precompile += [ 'forms.css']
#     config.assets.precompile += [ 'forms.js']

#     config.generators do |g|
#       g.orm             :active_record
#       g.template_engine :erb
#       g.test_framework  :test_unit, fixture: false
#       g.stylesheets     false
#       g.javascripts     false
#       g.jbuilder        false
#       g.helper          false
#     end
#   end
# end