Deface::Override.new(
  virtual_path: 'spree/shared/_products',
  name: 'add_recently_viewed_products_to_products_index',
  insert_after: "#products[data-hook], [data-hook='products']",
  partial: 'spree/shared/add_recently_viewed_products',
  enabled: Rails.env.test?
)

Deface::Override.new(
  virtual_path: 'spree/products/show',
  name: 'add_recently_viewed_products_to_products_show',
  insert_after: "#product_description[data-hook], [data-hook='product_description'], [data-hook='product_show']",
  partial: 'spree/shared/add_recently_viewed_products',
  enabled: Rails.env.test?
)
