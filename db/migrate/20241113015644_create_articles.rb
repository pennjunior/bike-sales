class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :article_type
      t.date :date

      t.timestamps
    end
  end
end
