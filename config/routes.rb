Spree::Core::Engine.routes.draw do
  get '/recently_viewed_products' => 'products#recently_viewed'
end
