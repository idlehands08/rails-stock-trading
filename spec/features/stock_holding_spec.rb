require 'rails_helper'

RSpec.describe 'Portfolios', type: :request do
  let(:user) { create(:user) }
  let(:stock) { create(:stock) }
  let(:buy_stock) { create(:buy_stock) }
  let(:sell_stock) { create(:sell_stock) }

  describe 'GET /index' do
    it 'returns the index page' do
      get root_path
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'User gets to open their holding' do
    before do
      sign_in user
    end

    it 'open user user front page' do
      get user_root_path
      expect(response).to have_http_status(:ok)
    end

    it 'open user transaction logs' do
      get transactions_path
      expect(response).to have_http_status(:ok)
    end

    it 'should be able for a user to buy and sell' do
      stock = create(:stock)
      get new_user_stock_holding_path(user.id, stock_id: stock.id)
      expect(response).to have_http_status(:ok)
    end
  end
end