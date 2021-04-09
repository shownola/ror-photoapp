class Message < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_one_attached :image
end
