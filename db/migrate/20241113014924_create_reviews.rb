class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :bike, null: false, foreign_key: true
      t.string :reviewer_name
      t.integer :rating
      t.text :content

      t.timestamps
    end
  end
end
