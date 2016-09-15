class Order < ApplicationRecord
  acts_as_paranoid
  belongs_to :user
  belongs_to :shop
  belongs_to :coupon
  has_many :oder_products, dependent: :destroy
end
