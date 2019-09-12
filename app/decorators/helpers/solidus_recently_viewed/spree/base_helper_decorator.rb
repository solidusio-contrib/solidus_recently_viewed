module SolidusRecentlyViewed
  module Spree
    module BaseHelperDecorator
      def self.prepended(base)
        base.module_eval do
          def cached_recently_viewed_products_ids
            (session['recently_viewed_products'] || '').split(', ')
          end

          def cached_recently_viewed_products
            ::Spree::Product.find_by_array_of_ids(cached_recently_viewed_products_ids)
          end
        end
      end

      ::Spree::BaseHelper.prepend self
    end
  end
end
