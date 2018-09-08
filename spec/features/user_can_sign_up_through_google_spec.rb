require 'rails_helper'

describe 'a visitor' do
  context 'visit the root path' do
    it 'can click on a Sign up button to go to dashboard page' do
      user_name = "Henry"

      visit root_path

      click_link 'Sign Up with Google'
      expect(current_path).to eq(dashboard_path)
      expect(page).to have_content("Welcome, #{user_name}")
      expect(page).to_not have_link('Log In')
      expect(page).to have_link('Log Out')
    end
  end
end
