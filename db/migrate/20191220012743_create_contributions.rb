class CreateContributions < ActiveRecord::Migration[5.2]
  def change
    create_table :contributions do |t|
      t.string :title,      null: false
      t.string :image
      t.text :text,         null: false
      t.references :user,   foreign_key: true
      t.timestamps
    end
  end
end
