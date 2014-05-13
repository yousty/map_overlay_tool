require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MapOverlayTool
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
  end
end

MAPS = ["map-1-1.0", "map-1-1.1", "map-1-1.2", "map-2-2.0", "map-2-2.1", "map-2-2.2", "map-3-3.0", "map-3-3.1", "map-3-3.2", "map-4-4.1", "map-5-5.1", "map-5-5.2", "map-6-Zelt", "map-7-Zelt", "map-8-Zelt", "map-9-Zelt", "map-10-Zelt", "map-11-Zelt", "map-12-Zelt", "map-13-Zelt"]
