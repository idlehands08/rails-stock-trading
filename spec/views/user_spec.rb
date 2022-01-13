require 'rails_helper'

RSpec.describe "Users", type: :feature do

  let(:user) { create(:user) }

  describe 'When user is not signed in' do

    before {visit user_root_path}

    it 'should show login when user not signed in' do
      within 'body' do
        expect(page).to have_content('LOGIN')
      end
    end
    it 'should show sign up when user not signed in' do
      within 'body' do
        expect(page).to have_content('SIGN UP')
        expect(page).to have_content('You are signed out')
      end
    end
  end

  describe 'When user is signed in' do

    before {sign_in user}

    it 'should show user index' do
      visit root_path
      within 'body' do
        expect(page).to have_content('Stock Portfolio')
        expect(page).to have_content('LOGOUT')
      end
    end

    it 'should show user holdings' do
      visit user_root_path
      within 'body' do
        expect(page).to have_content('Ayaya Test')
        expect(page).to have_content('LOGOUT')
      end
    end

    it 'should show joke apis' do
      visit user_root_path
      within 'body' do
        expect(page).to have_content('Show Joke')
        expect(page).to have_content('New Joke')
      end
    end

    it 'should show transaction logs' do
      visit transactions_path
      within 'body' do
        expect(page).to have_content("There's no transactions")
        expect(page).to have_content('LOGOUT')
      end
    end
  end
end