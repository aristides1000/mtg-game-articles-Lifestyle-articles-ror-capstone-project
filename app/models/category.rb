class Category < ApplicationRecord
  has_many :article_categories, foreign_key: :category_id
  has_many :articles, through: :article_categories

  validates :name, length: { minimum: 5, maximum: 10 }, uniqueness: true
  validates :name, presence: true

  def articles_order
    articles.order(created_at: :desc)
  end
end
