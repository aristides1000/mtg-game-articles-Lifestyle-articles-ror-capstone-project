class CreateJoinTableCategoriesArticles < ActiveRecord::Migration[6.1]
  def change
    create_join_table :categories, :articles, column_options: { null: false, foreign_key: true } do |t|
      t.index [:category_id, :article_id]
      t.index [:article_id, :category_id]
    end
  end
end
