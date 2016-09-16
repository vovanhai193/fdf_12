class Admin::CategoriesController < AdminController
  load_and_authorize_resource

  def new
  end

  def create
    if @category.save
      flash[:success] = t "flash.success.admin.created_category"
      redirect_to admin_categories_path
    else
      flash[:danger] = t "flash.danger.admin.created_category"
      render :new
    end
  end

  def index
    @categories = @categories.page(params[:page]).per Settings.common.per_page
  end

  private
  def category_params
    params.require(:category).permit :name
  end
end
