class Contribution < ApplicationRecord
  validates :title, :text, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  mount_uploader :image, ImageUploader

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

  def self.search(search)
    return Contribution.all unless search
    Contribution.where('text LIKE(?)', "%#{search}%")
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :public
end
