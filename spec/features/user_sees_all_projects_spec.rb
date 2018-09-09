require 'rails_helper'

feature 'user logged in' do
  scenario 'can see list of all projects related to water around the world' do
    user = create(:user)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/projects'

    expect(current_path).to eq(projects_path)
    expect(page).to have_content("10 Results")

    expect(page).to have_css(".project", count: 10)

    within(first(".project")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".country")
      expect(page).to have_css(".region")
      expect(page).to have_css(".abstract")
      expect(page).to have_css(".approval_date")
      expect(page).to have_css(".closing_date")
      expect(page).to have_css(".total_cost")
      expect(page).to have_css(".team_leader")
    end
  end
end
