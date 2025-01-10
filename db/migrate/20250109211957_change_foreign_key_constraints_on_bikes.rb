class ChangeForeignKeyConstraintsOnBikes < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :bikes, :categories
    remove_foreign_key :bikes, :brands

    add_foreign_key :bikes, :categories, on_delete: :nullify
    add_foreign_key :bikes, :brands, on_delete: :nullify
  end
end
