class SearchesController < ApplicationController
  def index
    @products = Product.search params[:search]
    @shops = Shop.search params[:search]
    respond_to do |format|
      format.js
      format.html
    end
  end
end
