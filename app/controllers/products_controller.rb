class ProductsController < ApplicationController
  def index
    @products = Product.of_shop params[:shop_id]
  end
end
