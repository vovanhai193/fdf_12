class User < ApplicationRecord
  acts_as_paranoid
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :shop_managers
  has_many :shops, through: :shop_managers
  has_many :comments
  has_many :products
  has_many :orders
  has_many :order_products
  has_many :coupons
end
