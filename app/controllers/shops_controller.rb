class ShopsController < ApplicationController

  def index
    @shops = Shop.page(params[:page]).per Settings.common.per_page
  end
end
