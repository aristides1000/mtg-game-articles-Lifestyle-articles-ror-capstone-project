class Article < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :author, class_name: 'User'
  has_many :votes, dependent: :destroy

  has_many :article_categories, foreign_key: :article_id
  has_many :categories, through: :article_categories

  validates :title, length: { minimum: 10, maximum: 100 }, uniqueness: true
  validates :title, :text, :image, presence: true

  def self.most_voted
    articles = Article.includes(:votes).sort { |a, b| b.votes.count <=> a.votes.count }
    articles.first
  end
end
