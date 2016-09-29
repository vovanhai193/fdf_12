class ShopsController < ApplicationController
  before_action :load_shop, only: :show

  def index
    @shops = Shop.active.page(params[:page])
      .per(Settings.common.per_page).decorate
  end

  def show
    @products = @shop.products.active.page(params[:page])
      .per Settings.common.products_per_page
    @shop = @shop.decorate
  end

  private
  def load_shop
    if Shop.exists? params[:id]
      @shop = Shop.find params[:id]
    else
      flash[:danger] = t "flash.danger.load_shop"
      redirect_to root_path
    end
  end
end
