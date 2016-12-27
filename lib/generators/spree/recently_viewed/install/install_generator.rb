module Spree
  module RecentlyViewed
    module Generators
      class InstallGenerator < Rails::Generators::Base
        def self.source_paths
          paths = self.superclass.source_paths
          paths.flatten
        end

        def add_javascripts
          append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require spree/frontend/solidus_recently_viewed\n"
        end
      end
    end
  end
end
