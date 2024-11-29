class AddCascadeToBikeForeignKeys < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :bikes, :categories
    remove_foreign_key :bikes, :brands

    add_foreign_key :bikes, :categories, on_delete: :cascade
    add_foreign_key :bikes, :brands, on_delete: :cascade
  end
end
