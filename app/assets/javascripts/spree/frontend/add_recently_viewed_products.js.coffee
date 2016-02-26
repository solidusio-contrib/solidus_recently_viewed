Spree.fetch_recently_viewed_products = (productId = "")->
  $.ajax
    url: Spree.pathFor("recently_viewed_products?product_id=" + productId),
    success: (data) ->
      $("#recently_viewed_container").html(data)
