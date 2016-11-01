class Dashboard::OrderManagersController < ApplicationController
  before_action :load_shop, only: :index

  def index
    @products_done = OrderProduct.history_by_day_with_status(@shop.id,
      OrderProduct.statuses[:done]).group_by{|i| l(i.created_at,
        format: :short_date)}
    @products_reject = OrderProduct.history_by_day_with_status(@shop.id,
      OrderProduct.statuses[:rejected]).group_by{|i| l(i.created_at,
        format: :short_date)}
  end

  private
  def load_shop
    if Shop.exists? params[:shop_id]
      @shop = Shop.find params[:shop_id]
      unless @shop.is_owner? current_user
        flash[:danger] = t "flash.danger.load_shop"
        redirect_to dashboard_shops_path
      end
    else
      flash[:danger] = t "flash.danger.load_shop"
      redirect_to dashboard_shops_path
    end
  end
end
