require 'rails_helper'

RSpec.describe 'Admins', type: :request do

  let(:user_create) {{ user: { email: 'ayaya2@ayaya.com', first_name: 'ayaya', last_name: 'test', password: '123123' } }}
  
  describe 'User Creation' do
    it 'should create a new user' do
      # expect { post admins_new_user_path, params: user_create }.to change(User, :count).by(+1)
    end
    
    it 'should create a new user' do
      get '/admins/new_user'
      user = FactoryBot.create(:user)
      login_as(user)
      get admin_root_path
    end
    # it 'should redirect to a different page' do
    #   post admins_new_user_path, params: user_create
    #   expect(response).to have_http_status :redirect
    # end
    
  end
  
  let(:admin) { create(:admin) }

  describe 'GET /admins' do
    it 'should get the index page' do
      get admin_root_path
      expect(response).to have_http_status(:ok)
    end
    it 'should sign in the admin' do
      sign_in admin
      get admin_root_path
      expect(response).to have_http_status(:ok)
    end
  
    it 'should sign out the admin' do
      sign_out admin
      get admin_root_path
      expect(response).to have_http_status(:ok)
    end
  
    it 'should direct to the admins page after sign in' do
      sign_in admin
      get admin_root_path
      expect(response).to have_http_status(:ok)
    end
  end

end