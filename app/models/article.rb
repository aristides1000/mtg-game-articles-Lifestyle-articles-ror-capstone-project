class Article < ApplicationRecord
  belongs_to :user
  has_many :votes, foreign_key: :articleid, class_name: 'Vote', dependent: :destroy
end
