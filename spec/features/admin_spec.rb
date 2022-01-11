require 'rails_helper'

RSpec.describe 'Admins', type: :request do

  # let(:user_create) {{ user: { email: 'ayaya2@ayaya.com', first_name: 'ayaya', last_name: 'test', password: '123123' } }}

  describe 'User Creation' do
    it 'should create a new user' do
      # get '/admins/new_user'

    #   expect { post admins_new_user_path, params: user_create }.to change(User, :count).by(+1)
    end
    # it 'should redirect to a different page' do
    #   post admins_new_user_path, params: user_create
    #   expect(response).to have_http_status :redirect
    # end

    
    # it 'should create a new user' do
    #   user = FactoryBot.create(:user)
    #   login_as(user)
  
    #   visit root_path
    # end

    
  end

  let(:admin) { create(:admin) }

  describe 'GET /index' do
    it 'returns the index page' do
      get root_path
      expect(response).to have_http_status(:ok)
    end
  end
end