class ShopsController < ApplicationController
  before_action :authenticate_user!

  def index
    @shops = Shop.page(params[:page]).per Settings.common.per_page
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new shop_params
    if @shop.save
      flash[:success] = t "flash.success.create_shop"
      redirect_to shops_path
    else
      flash[:danger] = t "flash.danger.create_shop"
      render :new
    end
  end

  private
  def shop_params
    params.require(:shop).permit :id, :name, :description,
      :owner_id, :cover_image, :avatar
  end
end
