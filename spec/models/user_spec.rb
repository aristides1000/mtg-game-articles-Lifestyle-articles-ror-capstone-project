require 'rails_helper'

RSpec.describe User, type: :model do
  context 'relations' do
    it 'many articles' do
      t = User.reflect_on_association(:articles)
      expect(t.macro).to eq(:has_many)
    end

    it 'many votes' do
      t = User.reflect_on_association(:votes)
      expect(t.macro).to eq(:has_many)
    end
  end
end
