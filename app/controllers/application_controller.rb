class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :create_cart

  private

  def create_cart
    @cart = Cart.build_from_hash session[:cart]
    @cart_group = @cart.items.group_by(&:shop_id).map  do |q|
      {shop_id: q.first, items: q.second.each.map { |qn| qn }}
    end
  end
end
