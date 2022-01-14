require 'rails_helper'

RSpec.describe "Admins", type: :feature do

  let(:admin) { create(:admin) }

  describe 'When admin is not signed in' do

    before {visit new_admin_session_path}

    it 'should show sign in when admin not signed in' do
      within 'body' do
        expect(page).to have_content('Admin Sign In')
      end
    end
  end

  describe 'When admin is signed in' do

    before {sign_in admin}

    it 'should show New User button and Emails' do
      visit admin_root_path
      within 'body' do
        expect(page).to have_content('Create New User Account')
        expect(page).to have_content('Email')
      end
    end
  end

  # describe 'View the new article form' do
  #   before {visit new_article_path}

  #   it 'shows form in the body' do
  #     within 'body' do
  #       expect(page).to have_content('Create an Article')

  #     end
  #   end

  #   it 'Successfully create a new article' do
  #     # fill_in 'article_title', with: 'test title'
  #     fill_in "Title", with: "New Title"
  #     fill_in "Author", with: "New Author"
  #     fill_in "Content", with: "Test Content"
  #     click_on('Create Article')
  #     expect(page).to have_current_path(articles_path)
  #     expect(page).to have_content('An article was successfully created')

  #   end
  # end

end