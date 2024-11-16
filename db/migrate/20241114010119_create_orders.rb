class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :bike, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :phone
      t.integer :quantity

      t.timestamps
    end
  end
end
