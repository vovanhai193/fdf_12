class User < ApplicationRecord
  acts_as_paranoid
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :shop_managers
  has_many :shops, through: :shop_managers
  has_many :own_shops, class_name: "Shop", foreign_key: :owner_id
  has_many :comments
  has_many :products
  has_many :orders
  has_many :order_products
  has_many :coupons

  enum status: {active: 0, blocked: 1}
  mount_uploader :avatar, UserAvatarUploader

  validates :name, presence: true
  validate :image_size

  private
  def image_size
    max_size = Settings.pictures.max_size
    if avatar.size > max_size.megabytes
      errors.add :avatar, I18n.t("pictures.error_message", max_size: max_size)
    end
  end
end
