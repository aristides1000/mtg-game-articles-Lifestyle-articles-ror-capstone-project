class Article < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :user
  has_many :votes, foreign_key: :articleid, class_name: 'Vote', dependent: :destroy
=begin
  has_many :article_categories, foreign_key: :categoryid
  has_many :categories, through: :article_categories, source: :article
=end
  has_many :article_categories, foreign_key: :articleid
  has_many :categories, through: :article_categories, source: :category_id

  validates :title, presence: true
end
