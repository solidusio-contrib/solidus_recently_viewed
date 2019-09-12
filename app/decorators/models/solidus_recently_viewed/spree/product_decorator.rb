module SolidusRecentlyViewed
  module Spree
    module ProductDecorator
      def self.prepended(base)
        base.singleton_class.prepend ClassMethods
      end

      module ClassMethods
        def find_by_array_of_ids(ids)
          where(id: ids)
        end
      end

      ::Spree::Product.prepend self
    end
  end
end
