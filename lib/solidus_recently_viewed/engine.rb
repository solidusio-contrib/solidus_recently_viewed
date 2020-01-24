# frozen_string_literal: true

require 'spree/core'

module SolidusRecentlyViewed
  class Engine < Rails::Engine
    include SolidusSupport::EngineExtensions::Decorators

    isolate_namespace ::Spree

    engine_name 'solidus_recently_viewed'

    initializer 'spree.recently_viewed.environment', before: :load_config_initializers do
      SolidusRecentlyViewed::Config = SolidusRecentlyViewed::Settings.new
    end

    def self.activate
      cache_klasses = %W(#{config.root}/app/**/*_decorator*.rb #{config.root}/app/overrides/*.rb)
      Dir.glob(cache_klasses) do |klass|
        Rails.configuration.cache_classes ? require(klass) : load(klass)
      end
    end

    config.to_prepare(&method(:activate).to_proc)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
