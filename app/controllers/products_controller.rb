class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per Settings.common.per_page
  end

  def new
    @product = Product.new
  end
end
