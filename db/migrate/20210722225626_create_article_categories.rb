class CreateArticleCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :article_categories do |t|
      t.integer :articleid
      t.integer :categoryid

      t.timestamps
    end
  end
end
