class User < ApplicationRecord
  has_many :articles, foreign_key: :author_id, dependent: :destroy
  has_many :votes, foreign_key: :userid, class_name: 'Vote', dependent: :destroy
end
