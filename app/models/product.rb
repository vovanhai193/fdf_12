class Product < ApplicationRecord
  acts_as_paranoid
  belongs_to :category
  belongs_to :shop
  belongs_to :user

  has_many :tag_products
  has_many :tags, through: :tag_products
  has_many :order_products
  has_many :reviews, as: :reviewable
  has_many :comments, as: :commentable

  enum status: {active: 0, inactive: 1}

  scope :of_shop, -> shop_id  do
    where(shop_id: shop_id)
  end
end
