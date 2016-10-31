class Category < ApplicationRecord
  acts_as_paranoid

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  has_many :products

  scope :asc_by_name, ->{order :name}

  validates :name, presence: true, uniqueness: true
end
