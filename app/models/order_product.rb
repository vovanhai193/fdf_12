class OrderProduct < ApplicationRecord
  acts_as_paranoid
  belongs_to :user
  belongs_to :order
  belongs_to :product
  belongs_to :coupon

  enum status: {pending: 0, accepted: 1, rejected: 2, done: 3}
  delegate :name, to: :user, prefix: true, allow_nil: true
  delegate :name, to: :product, prefix: true
  delegate :email, to: :user, prefix: true

  def total_price
    product.price * quantity
  end

  scope :by_accepted, ->{where Order.statuses[:accepted]}
  scope :by_user, ->user {where user: user}
  scope :group_product, -> do
    joins(:product)
      .select("order_products.product_id, sum(order_products.quantity) as total")
      .group("order_products.product_id")
      .order("total DESC")
  end

  scope :history_by_day_with_status, ->(shop_id, status) do
    joins(:product, :order)
      .select("products.name as name, sum(quantity) as quantity,
        sum(quantity) * products.price as price, order_products.created_at as
        created_at, products.id as product_id")
      .where("order_products.status = ? and products.status = ? and
        orders.shop_id = ?", status, Product.statuses[:active], shop_id)
      .group("order_products.product_id,
        DATE_FORMAT(order_products.created_at, '%Y%m%d')")
  end
end
