require 'rails_helper'

RSpec.describe 'Admins', type: :request do

  let(:user_create) {{ user: { email: 'ayaya2@ayaya.com', first_name: 'ayaya', last_name: 'test', password: '123123' } }}

  context 'User Creation' do
    it 'should create a new user' do
      expect { post admins_new_user_path, params: user_create }.to change(User, :count).by(+1)
    end
    it 'should redirect to a different page' do
      post admins_new_user_path, params: user_create
      expect(response).to have_http_status :redirect
    end
  end
end