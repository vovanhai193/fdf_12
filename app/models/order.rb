class Order < ApplicationRecord
  acts_as_paranoid
  belongs_to :user
  belongs_to :shop
  belongs_to :coupon
  has_many :order_products, dependent: :destroy
  enum status: {open: 0, deliver: 1, close: 2}
  delegate :name, to: :shop, prefix: :shop
  delegate :name, to: :user, prefix: :user, allow_nil: true
  delegate :name, to: :coupon, prefix: :coupon, allow_nil: true
end
