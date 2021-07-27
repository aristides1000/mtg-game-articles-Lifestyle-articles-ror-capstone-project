require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'relations' do
    it 'many articles through categorization' do
      t = Category.reflect_on_association(:articles)
      expect(t.macro).to eq(:has_many)
    end
  end
end