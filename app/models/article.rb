class Article < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :author, class_name: 'User'
  has_many :votes, dependent: :destroy

  has_many :article_categories, foreign_key: :article_id
  has_many :categories, through: :article_categories

  validates :title, presence: true
end
