class Admin::ShopRequestsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @shops = Shop.pending.page(params[:page]).per(Settings.common.per_page)
  end

  def update
  end
end
