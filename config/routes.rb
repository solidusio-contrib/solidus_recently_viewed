Spree::Core::Engine.add_routes do
  get '/recently_viewed_products' => 'products#recently_viewed'
end
