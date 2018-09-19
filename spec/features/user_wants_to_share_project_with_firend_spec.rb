require 'rails_helper'


feature 'a logged in user' do
  scenario 'wants to share a project with a friend by filling a form to add their phone number' do
    project_1 = create(:project, name: 'Modernization of irrigation')

    visit project_path(project_1)

    expect(current_path).to eq(project_path(project_1))

    fill_in :phone_number, with: '970-231-1234'

    click_on 'Send Text'
    # And click a “Send Text” Button
    # The phone number will be texted the project name and a link to that projects show page.
    expect(current_path).to eq(project_sms_path)
    expect(page).to have_css(".sms")
    expect(page).to have_content("SMS successfully sent")
  end
end
