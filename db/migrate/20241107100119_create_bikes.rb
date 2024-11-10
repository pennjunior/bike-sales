class CreateBikes < ActiveRecord::Migration[7.1]
  def change
    create_table :bikes do |t|
      t.string :model
      t.integer :kilometers
      t.string :body
      t.string :colour
      t.integer :engine_capacity
      t.date :last_modified
      t.string :registration_status
      t.text :description
      t.text :features
      t.integer :price
      t.integer :stock
      t.integer :maximum_speed
      t.string :fuel_type
      t.references :category, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
