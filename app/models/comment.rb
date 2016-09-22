class Comment < ApplicationRecord
  acts_as_paranoid
  belongs_to :user
  belongs_to :commentable, polymorphic: true

  delegate :name, to: :user, prefix: :user, allow_nil: true
  delegate :avatar, to: :user, prefix: :user, allow_nil: true

  scope :newest, ->{order created_at: :desc}
end
