class TagProduct < ApplicationRecord
  acts_as_paranoid
  belongs_to :tag
  belongs_to :product
end
