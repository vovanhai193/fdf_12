class Admin::UsersController < AdminController
  load_and_authorize_resource

  def index
  end

  def edit
  end

  def update
    if @user.update_attributes user_params
      flash[:success] = t "flash.success.admin.updated_user"
      redirect_to admin_users_path
    else
      flash[:danger] = t "flash.danger.admin.updated_user"
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit :name, :email, :chatwork_id, :avatar,
      :description
  end
end
