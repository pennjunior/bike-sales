class RenameTypeInArticles < ActiveRecord::Migration[7.1]
  def change
    rename_column :articles, :type, :article_type  # or another name like category
  end
end
