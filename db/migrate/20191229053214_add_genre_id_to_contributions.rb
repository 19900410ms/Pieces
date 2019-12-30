class AddGenreIdToContributions < ActiveRecord::Migration[5.2]
  def change
    add_column :contributions, :genre_id, :integer
  end
end
