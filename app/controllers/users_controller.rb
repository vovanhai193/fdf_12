class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find_by id: params[:id]
    unless @user
      flash[:danger] = t "flash.danger_message"
      redirect_to root_path
    end
  end
end
