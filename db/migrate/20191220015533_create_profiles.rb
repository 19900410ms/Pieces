class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :gender
      t.string :sports
      t.string :study_fields
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
