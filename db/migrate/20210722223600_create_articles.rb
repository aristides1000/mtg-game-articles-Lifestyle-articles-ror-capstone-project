class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.references :author, foreign_key: { to_table: :users }
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
