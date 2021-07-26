class Article < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :user
  has_many :votes, foreign_key: :articleid, class_name: 'Vote', dependent: :destroy

  validates :title, presence: true
end
