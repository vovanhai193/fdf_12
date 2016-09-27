class CategoriesController < ApplicationController

  def show
    @category = Category.find_by id: params[:id]
    unless @category
      flash[:danger] = t "flash.danger.load_category"
      redirect_to root_path
    end
  end
end
