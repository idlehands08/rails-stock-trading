require 'rails_helper'

RSpec.describe User, type: :model do
  context 'When creating users, ' do
    it 'email must not be null' do
      user = User.new(email: nil, encrypted_password: '123123', first_name: 'test', last_name: 'test')
      expect(user).not_to be_valid
    end
    
    it 'password must not be null' do
      user = User.new(email: 'rspectest@example.com', encrypted_password: nil, first_name: 'test', last_name: 'test')
      expect(user).not_to be_valid
    end
    
    it 'first name must not be null' do
      user = User.new(email: 'rspectest@example.com', encrypted_password: '123123', first_name: nil, last_name: 'test')
      expect(user).not_to be_valid
    end
    
    it 'last name must not be null' do
      user = User.new(email: 'rspectest@example.com', encrypted_password: '123123', first_name: 'test', last_name: nil)
      expect(user).not_to be_valid
    end
  end

  # context 'User creates wallet' do
  #   it 'user create wallet of 100.000' do
  #     user = User.new(email: 'test@example.com', encrypted_password: '123123', first_name: 'test', last_name: 'test')
  #     expect(user.wallet).not_to be_nil
  #   end
  # end
end