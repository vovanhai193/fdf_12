class ShopNotification
  def initialize shop
    @shop = shop
    @admins = Admin.all
  end

  def send_when_requested
    UserMailer.shop_request(@shop.owner, @shop).deliver_later
    @admins.each do |admin|
      AdminMailer.shop_request(admin, @shop).deliver_later
    end
  end

  def send_when_confirmed
    UserMailer.shop_confirmation(@shop.owner, @shop).deliver_later
    @admins.each do |admin|
      AdminMailer.shop_confirmation(admin, @shop).deliver_later
    end
  end
end
