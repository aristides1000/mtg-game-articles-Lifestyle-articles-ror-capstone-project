require 'rails_helper'

RSpec.describe ArticleCategory, type: :model do
  context 'relations' do
    it 'belongs to a category' do
      t = ArticleCategory.reflect_on_association(:category)
      expect(t.macro).to eq(:belongs_to)
    end

    it 'belongs to an article' do
      t = ArticleCategory.reflect_on_association(:article)
      expect(t.macro).to eq(:belongs_to)
    end
  end
end
