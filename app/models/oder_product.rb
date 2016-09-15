class OderProduct < ApplicationRecord
  acts_as_paranoid
  belongs_to :user
  belongs_to :order
  belongs_to :product
  belongs_to :coupon
end
