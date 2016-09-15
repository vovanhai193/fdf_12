class Tag < ApplicationRecord
  acts_as_paranoid
  has_many :tag_products
  has_many :products, through: :tag_products
end
