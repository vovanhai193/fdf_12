class User < ApplicationRecord
  ratyrate_rater

  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged]

  def slug_candidates
    [:name, [:name, :id]]
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook, :google_oauth2]

  before_create :generate_authentication_token!

  has_many :shop_managers
  has_many :shops, through: :shop_managers
  has_many :own_shops, class_name: "Shop", foreign_key: :owner_id
  has_many :comments
  has_many :products
  has_many :orders
  has_many :order_products
  has_many :coupons
  has_many :events

  enum status: {active: 0, blocked: 1}
  mount_uploader :avatar, UserAvatarUploader

  validates :name, presence: true
  validates :auth_token, uniqueness: true
  validate :image_size

  scope :by_date_newest, ->{order created_at: :desc}

  class << self
    def from_omniauth auth
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.name = auth.info.name
        user.password = Devise.friendly_token[0, 20]
        user.provider = auth.provider
        user.uid = auth.uid
      end
    end
  end

  def should_generate_new_friendly_id?
    slug.blank? || name_changed? || super
  end

  def generate_authentication_token!
    begin
      self.auth_token = Devise.friendly_token
    end while self.class.exists?(auth_token: auth_token)
  end

  private
  def image_size
    max_size = Settings.pictures.max_size
    if avatar.size > max_size.megabytes
      errors.add :avatar, I18n.t("pictures.error_message", max_size: max_size)
    end
  end
end
