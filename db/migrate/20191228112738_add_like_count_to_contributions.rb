class AddLikeCountToContributions < ActiveRecord::Migration[5.2]
  def change
    add_column :contributions, :likes_count, :integer
  end
end
