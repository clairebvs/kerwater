require 'rails_helper'

feature 'user logged in' do
  scenario 'can see a specific water project' do
    project_1 = Project.create()

    visit project_path(project_1)

    expect(current_path).to eq(project_path(project_1))

    expect(page).to have_css(".project")

    within(first(".project")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".country")
      expect(page).to have_css(".region")
      expect(page).to have_css(".approval_date")
      expect(page).to have_css(".closing_date")
      expect(page).to have_css(".total_cost")
      expect(page).to have_css(".team_leader")
      expect(page).to have_css(".comment")
    end
  end

  describe "they fill in a comment form" do
    it "displays the comment on the project show" do
      project = Project.create!(name: "The irrigation plan", country: "Nepal")

      visit project_path(project)

      fill_in "comment[author_name]", with: "Elene"
      fill_in "comment[body]", with: "Great project"
      click_on "Submit"

      expect(current_path).to eq(project_path(project))
      expect(page).to have_content("Elene")
      expect(page).to have_content("Great project")
    end
  end
end
