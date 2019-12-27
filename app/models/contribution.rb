class Contribution < ApplicationRecord

  validates :title, :text, presence: true

  belongs_to :user
  has_many :comments

  mount_uploader :image, ImageUploader
end
