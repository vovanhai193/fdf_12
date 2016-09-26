class StaticPagesController < ApplicationController

  def home
    @shops = Shop.top_shops.decorate
    @products = Product.top_products
  end
end
