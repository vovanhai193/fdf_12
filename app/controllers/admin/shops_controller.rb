class Admin::ShopsController < AdminController
  load_and_authorize_resource

  def index
    @shops = @shops.decorate
  end
end
