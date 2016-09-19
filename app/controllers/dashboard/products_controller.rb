class Dashboard::ProductsController < BaseDashboardController
  before_action :load_shop, only: [:new, :create]

  def new
    @product = @shop.products.new
    @categories = Category.all
  end

  def create
    @product = @shop.products.new product_params
    if @product.save
      flash[:success] = t "flash.success.dashboard.create_product"
      redirect_to dashboard_shop_products_path
    else
      flash[:danger] = t "flash.danger.dashboard.create_product"
      render :new
    end
  end

  private
  def load_shop
    @shop = Shop.find_by id: params[:shop_id]
  end

  def product_params
    params.require(:product).permit :id, :name, :description, :price,
      :category_id, :user_id, :image
  end

end
