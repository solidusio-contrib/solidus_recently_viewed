module Spree
  BaseHelper.module_eval do
    def get_recently_viewed_products_ids
      (session['recently_viewed_products'] || '').split(', ')
    end

    def get_recently_viewed_products
      Spree::Product.find_by_array_of_ids(get_recently_viewed_products_ids)
    end
  end
end
