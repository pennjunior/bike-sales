class AddSlugToBikes < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :slug, :string
    add_index :bikes, :slug, unique: true
  end
end
