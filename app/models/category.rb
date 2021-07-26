class Category < ApplicationRecord
=begin
  has_many :articles, foreign_key: :articleid, dependent: :destroy
  has_many :article_categories, foreign_key: :categoryid, dependent: :destroy
=end
  has_many :article_categories, foreign_key: :categoryid
  has_many :articles, through: :article_categories, source: :articleid
end
