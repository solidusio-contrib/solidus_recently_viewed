require 'spree_core'

module Spree::RecentlyViewed
end

module SpreeRecentlyViewed
  class Engine < Rails::Engine
    railtie_name "spree_recently_viewed"

    config.autoload_paths += %W(#{config.root}/lib)

    initializer "spree.recently_viewed.preferences", :after => "spree.environment" do |app|
      Spree::RecentlyViewed::Config = Spree::RecentlyViewedConfiguration.new
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
