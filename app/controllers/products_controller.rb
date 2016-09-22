class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per Settings.common.per_page
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find_by id: params[:id]
    unless @product
      flash[:danger] = t "product.not_product"
      redirect_to products_path
    end
    @comment = @product.comments.build
    @comments = @product.comments.newest.includes :user
  end
end
