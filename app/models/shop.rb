class Shop < ApplicationRecord
  acts_as_paranoid
  has_many :reviews, as: :reviewable
  has_many :comments, as: :commentable
  has_many :shop_managers, dependent: :destroy
  has_many :users, through: :shop_managers
  has_many :orders
  has_many :order_products, through: :orders

  enum status: {pending: 0, active: 1, closed: 2, blocked: 3}
end
