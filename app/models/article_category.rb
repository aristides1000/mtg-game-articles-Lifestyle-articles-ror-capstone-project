class ArticleCategory < ApplicationRecord
=begin
  belongs_to :category
  belongs_to :article
=end
  belongs_to :category
  belongs_to :article
end
