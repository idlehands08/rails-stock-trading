require 'rails_helper'

RSpec.describe StockHolding, type: :model do
  context 'When a new stock_holding record is created' do
    
    it 'must be valid when required parameters are valid' do
      user = User.create(email: 'test@test.com', password: '123123', first_name: 'test', last_name: 'test')
      stock = Stock.create(stock_symbol: 'TSLA', current_price: 100)
      stock_holding = StockHolding.new(stock_symbol: 'TSLA', user_id: user.id, stock_price: 100, amount: 1000, stock_id: stock.id, t_type: 'BUY')
      expect(stock_holding).to be_valid
    end

    it 'email must not be null' do
      user = User.create(email: 'test@test.com', password: '123123', first_name: 'test', last_name: 'test')
      stock = Stock.create(stock_symbol: 'TSLA', current_price: 100)
      stock_holding = StockHolding.new(stock_symbol: nil, user_id: user.id, stock_price: 100, amount: 1000, stock_id: stock.id)
      expect(stock_holding).not_to be_valid
    end

    it 'user_id must not be null' do
      stock = Stock.create(stock_symbol: 'TSLA', current_price: 100)
      stock_holding = StockHolding.new(stock_symbol: nil, user_id: nil, stock_price: 100, amount: 1000, stock_id: stock.id)
      expect(stock_holding).not_to be_valid
    end

    it 'stock_id must not be null' do
      user = User.create(email: 'test@test.com', password: '123123', first_name: 'test', last_name: 'test')
      stock_holding = StockHolding.new(stock_symbol: nil, user_id: user.id, stock_price: 100, amount: 1000, stock_id: nil)
      expect(stock_holding).not_to be_valid
    end
  end
end
