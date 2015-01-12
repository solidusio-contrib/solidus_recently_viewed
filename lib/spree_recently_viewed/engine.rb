module SpreeRecentlyViewed
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_recently_viewed'

    config.autoload_paths += %W(#{config.root}/lib)

    initializer 'spree.recently_viewed.environment', before: :load_config_initializers do
      Spree::RecentlyViewed::Config = Spree::RecentlyViewedConfiguration.new
    end

    def self.activate
      cache_klasses = %W(#{config.root}/app/**/*_decorator*.rb #{config.root}/app/overrides/*.rb)
      Dir.glob(cache_klasses) do |klass|
        Rails.configuration.cache_classes ? require(klass) : load(klass)
      end
    end

    config.to_prepare(&method(:activate).to_proc)
  end
end
