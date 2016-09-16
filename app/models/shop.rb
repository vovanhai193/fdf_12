class Shop < ApplicationRecord
  attr_accessor :owner_id
  acts_as_paranoid
  belongs_to :owner, class_name: "User", foreign_key: :owner_id
  has_many :reviews, as: :reviewable
  has_many :comments, as: :commentable
  has_many :shop_managers, dependent: :destroy
  has_many :users, through: :shop_managers
  has_many :orders
  has_many :order_products, through: :orders

  after_create :create_shop_manager

  enum status: {pending: 0, active: 1, closed: 2, blocked: 3}

  validates :name, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 50}
  mount_uploader :cover_image, CoverUploader
  mount_uploader :avatar, PictureUploader

  validate :image_size

  private
  def create_shop_manager
    shop_managers.create user_id: owner_id
  end

  def image_size
    max_size = Settings.pictures.max_size
    if cover_image.size > max_size.megabytes
      errors.add(:cover_image, I18n.t("pictures.error_message", max_size: max_size))
    end
    if avatar.size > max_size.megabytes
      errors.add(:avatar, I18n.t("pictures.error_message", max_size: max_size))
    end
  end
end
