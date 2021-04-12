class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,  :trackable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy
  # has_one_attached :main_images
  has_many_attached :uploads

  # has_one :payment
  # accepts_nested_attributes_for :payment
end
