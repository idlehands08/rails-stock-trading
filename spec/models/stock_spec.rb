require 'rails_helper'

RSpec.describe Stock, type: :model do
  context 'When creating users, ' do
    it 'stock symbol must not be null' do
      stock = Stock.new(stock_symbol: nil, current_price: '123123')
      expect(stock).not_to be_valid
    end
    it 'current price must not be null' do
      stock = Stock.new(stock_symbol: 'AA', current_price: nil)
      expect(stock).not_to be_valid
    end
  end 
end