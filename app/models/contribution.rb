class Contribution < ApplicationRecord

  validates :title, :text, presence: true

  belongs_to :user
  has_many :comments
  has_many :likes

  mount_uploader :image, ImageUploader
  
end
