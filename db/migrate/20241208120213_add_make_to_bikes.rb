class AddMakeToBikes < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :make, :string
  end
end
