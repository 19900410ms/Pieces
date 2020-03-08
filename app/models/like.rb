class Like < ApplicationRecord
  belongs_to :user,         optional: true
  belongs_to :contribution, optional: true, counter_cache: :likes_count
end
