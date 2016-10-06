class OrderMailer < ApplicationMailer

  def shop_confirmation product_order
    @product_order = product_order
    mail to: @product_order.user_name,
      subject: t(".subject", name: @product_order.product_name)
  end
end
