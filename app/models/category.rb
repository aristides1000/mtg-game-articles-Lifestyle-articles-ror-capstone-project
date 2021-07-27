class Category < ApplicationRecord
  has_many :article_categories, foreign_key: :category_id
  has_many :articles, through: :article_categories

  def articles_order
    articles.order(created_at: :desc)
  end
end
