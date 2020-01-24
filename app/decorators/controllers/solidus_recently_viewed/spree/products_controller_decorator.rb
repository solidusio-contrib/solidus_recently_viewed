module SolidusRecentlyViewed
  module Spree
    module ProductsControllerDecorator
      def self.prepended(base)
        base.class_eval do
          after_action :save_recently_viewed, only: :recently_viewed
        end
      end

      def recently_viewed
        render 'spree/products/recently_viewed', layout: false
      end

      private

      def save_recently_viewed
        id = params[:product_id]
        return unless id.present?

        rvp = (session['recently_viewed_products'] || '').split(', ')
        rvp.delete(id)
        rvp << id unless rvp.include?(id.to_s)
        rvp_max_count = ::SolidusRecentlyViewed::Config.preferred_recently_viewed_products_max_count
        rvp.delete_at(0) if rvp.size > rvp_max_count.to_i
        session['recently_viewed_products'] = rvp.join(', ')
      end

      ::Spree::ProductsController.prepend self
    end
  end
end
