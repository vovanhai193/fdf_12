class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @orders = Order.page(params[:page]).per(Settings.common.per_page)
  end

  def show
  end

  def destroy
  end
end
