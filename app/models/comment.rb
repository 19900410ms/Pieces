class Comment < ApplicationRecord

  validates :text, presence: true

  belongs_to :user,         optional: true
  belongs_to :contribution, optional: true
  
end
