require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'relations' do
    it 'many article_categories' do
      t = Article.reflect_on_association(:article_categories)
      expect(t.macro).to eq(:has_many)
    end

    it 'many votes' do
      t = Article.reflect_on_association(:votes)
      expect(t.macro).to eq(:has_many)
    end

    it 'belongs to a user' do
      t = Article.reflect_on_association(:author)
      expect(t.macro).to eq(:belongs_to)
    end

    it 'many categories' do
      t = Article.reflect_on_association(:categories)
      expect(t.macro).to eq(:has_many)
    end
  end
end