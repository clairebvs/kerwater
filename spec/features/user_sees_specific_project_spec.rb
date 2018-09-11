require 'rails_helper'

feature 'user logged in' do
  scenario 'can see a specific water project' do
    project_1 = { id: '123',
                  name: 'dfg'
                }

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
    end
  end

  scenario 'can leave a comment' do
    
  end
end
