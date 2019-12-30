class AddPublicIdToContributions < ActiveRecord::Migration[5.2]
  def change
    add_column :contributions, :public_id, :integer
  end
end
