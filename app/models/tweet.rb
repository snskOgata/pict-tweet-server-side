class Tweet < ApplicationRecord
  belongs_to :user

  validates :title, :image, presence: true
  mount_uploader :image, PictureUploader
end
