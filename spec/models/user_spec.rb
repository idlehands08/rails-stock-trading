require 'rails_helper'

RSpec.describe User, type: :model do
  context 'When creating users, ' do
    it 'must be valid when all fields are filled up properly' do
      user = User.new(email: 'test@test.com', password: '123123', first_name: 'test', last_name: 'test')
      expect(user).to be_valid
    end
    
    it 'email must not be null' do
      user = User.new(email: nil, password: '123123', first_name: 'test', last_name: 'test')
      expect(user).not_to be_valid
    end
    
    it 'password must not be null' do
      user = User.new(email: 'rspectest@example.com', password: nil, first_name: 'test', last_name: 'test')
      expect(user).not_to be_valid
    end
    
    it 'first name must not be null' do
      user = User.new(email: 'rspectest@example.com', password: '123123', first_name: nil, last_name: 'test')
      expect(user).not_to be_valid
    end
    
    it 'last name must not be null' do
      user = User.new(email: 'rspectest@example.com', password: '123123', first_name: 'test', last_name: nil)
      expect(user).not_to be_valid
    end
  end

  context 'User wallet' do
    
    
    it 'user has a wallet after create' do
      user = User.create(email: 'rspectest@example.com', password: '123123', first_name: 'test', last_name: 'test')
      expect(user.wallet).not_to be_nil
    end
    
    it 'user wallet has 100,000 balance' do
      user = User.create(email: 'rspectest@example.com', password: '123123', first_name: 'test', last_name: 'test')
      expect(user.wallet.balance).to eq(100_000)
    end
  end
end