class Like < ApplicationRecord
  belongs_to :user
  belongs_to :contribution, counter_cache: :likes_count
end
