class StaticPagesController < ApplicationController

  def home
    @shops = Shop.top_shops
    @products = Product.top_products
  end
end
