require 'rails_helper'

RSpec.describe 'Users', type: :request do

  let(:user) { create(:user) }

  describe 'GET user root path' do
    it 'should get the index page' do
      get user_root_path
      expect(response).to have_http_status(:ok)
    end
    it 'should sign in as a user' do
      sign_in user
      get user_root_path
      expect(response).to have_http_status(:ok)
    end
  
    it 'should sign out as a user' do
      sign_out user
      get user_root_path
      expect(response).to have_http_status(:ok)
    end
  
    it 'should direct to the user page after sign in' do
      sign_in user
      get user_root_path
      expect(response).to have_http_status(:ok)
    end
  end

end