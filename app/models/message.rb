class Message < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_one_attached :main_image
  has_many_attached :uploads

  validate :acceptable_image
  # validate :main_image_format

  def acceptable_image
    return unless main_image.attached?

    unless main_image.byte_size <= 1.megabyte
      errors.add(:image, 'is too large')
    end

    acceptable_types = ['image/jpeg', 'image/png']
    unless acceptable_types.include?(main_image.content_type)
      errors.add(:image, 'must be jpeg or png')
    end
  end

  private

  # def main_image_format
  #   return unless main_image.attached?
  #   main_image.purge_later
  #   errors.add(main_image, 'must be an image')
  # end

  # def image
  #   image.variant(resize: '450x450')
  # end


end
