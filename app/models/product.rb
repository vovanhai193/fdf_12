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
  mount_uploader :image, PictureUploader
  validates :name, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 50}
  validate :image_size

  private
  def image_size
    max_size = Settings.pictures.max_size
    if image.size > max_size.megabytes
      errors.add(:image, I18n.t("pictures.error_message", max_size: max_size))
    end
  end
end
