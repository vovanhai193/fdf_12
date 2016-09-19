class AdminMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_mailer.send_when_requested.subject
  #
  def shop_request admin, shop
    @admin = admin
    @shop = shop.decorate
    mail to: admin.email, subject: t(".subject", name: shop.name)
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_mailer.send_when_confirmed.subject
  #
  def shop_confirmation admin, shop
    @admin = admin
    @shop = shop.decorate
    mail to: admin.email, subject: t(".subject", name: shop.name)
  end
end
