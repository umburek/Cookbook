require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures nick presence' do
      user = User.new(nick: 'Nick', email: 'email@example.com').save
      expect(user).to eq(false)
    end

    it 'ensures email presence' do
      user = User.new(nick: 'Nick').save
      expect(user).to eq(false)
    end

    it 'should save successfully' do
      user = User.new(nick: 'Nick', email: 'email@example.com').save
      expect(user).to eq(true)
    end
  end
end
