class Category < ApplicationRecord
  has_many :articles, foreign_key: :articleid, class_name: 'Article', dependent: :destroy
  has_many :article_categories, foreign_key: :categoryid, class_name: 'ArticleCategory', dependent: :destroy
end
