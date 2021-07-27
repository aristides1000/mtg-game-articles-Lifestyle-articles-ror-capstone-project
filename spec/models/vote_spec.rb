require 'rails_helper'

RSpec.describe Vote, type: :model do
  context 'relations' do
    it 'belongs to an article' do
      t = Vote.reflect_on_association(:article)
      expect(t.macro).to eq(:belongs_to)
    end

    it 'belongs to a user' do
      t = Vote.reflect_on_association(:user)
      expect(t.macro).to eq(:belongs_to)
    end
  end
end