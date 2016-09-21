class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = current_user.orders.by_date_newest.page(params[:page])
      .per(Settings.common.per_page)
  end

  def new
    @orders = Order.new
  end

  def show
    @order =  Order.find_by id: params[:id]
    unless @order
      flash[:danger] = t "oder.not_oder"
      redirect_to new_order_path
    end
  end

  def create
    if @cart.present?
      @order = Order.new order_params
      if @order.save
        session.delete("cart")
        flash[:success] = t "flash.success.order"
        redirect_to order_path @order
      else
        flash[:danger] = t "oder.not_oder"
        redirect_to new_order_path
      end
    else
      flash[:danger] = t "oder.not_product_in_cart"
      redirect_to carts_path
    end
  end

  private

  def order_params
    params.require(:order).permit(:notes)
      .merge! user: current_user, cart: @cart
  end
end
