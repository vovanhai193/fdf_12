class Order < ApplicationRecord
  attr_accessor :cart
  acts_as_paranoid
  belongs_to :user
  belongs_to :shop
  belongs_to :coupon
  has_many :order_products, dependent: :destroy
  enum status: {pending: 0, confirm: 1}
  delegate :name, to: :shop, prefix: :shop
  delegate :name, to: :user, prefix: :user, allow_nil: true
  delegate :name, to: :coupon, prefix: :coupon, allow_nil: true

  after_create :build_order_products

  scope :by_date_newest, ->{order created_at: :desc}

  def build_order_products
    cart.items.each do |item|
      order_products.create product_id: item.product_id,
        quantity: item.quantity
    end
  end
end
