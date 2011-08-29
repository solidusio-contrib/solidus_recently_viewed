Deface::Override.new(:virtual_path => 'shared/_products',
                     :name => 'add_recently_viewed_products_to_products_index',
                     :insert_after => "#products[data-hook], [data-hook='products']",
                     :partial => 'shared/recently_viewed_products')

Deface::Override.new(:virtual_path => 'products/show',
                     :name => 'add_recently_viewed_products_to_products_show',
                     :insert_after => "#product_description[data-hook], [data-hook='product_description']",
                     :partial => 'shared/recently_viewed_products')
