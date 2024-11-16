class RemoveArticleTypeFromArticles < ActiveRecord::Migration[7.1]
  def change
    remove_column :articles, :article_type, :string
  end
end
