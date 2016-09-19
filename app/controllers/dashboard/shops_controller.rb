class Dashboard::ShopsController < BaseDashboardController
  def new
    @shop = current_user.own_shops.build
  end

  def create
    @shop = current_user.own_shops.build shop_params
    if @shop.save
      flash[:success] = t "flash.success.created_shop"
      redirect_to shops_path
    else
      flash[:danger] = t "flash.danger.created_shop"
      render :new
    end
  end

  private
  def shop_params
    params.require(:shop).permit :id, :name, :description,
      :cover_image, :avatar
  end
end
