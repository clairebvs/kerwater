require 'rails_helper'
require 'twilio-ruby'

describe 'a user can send a sms to a friend' do
  it 'using twilio api/service' do
    project_1 = create(:project, name: 'Modernization of irrigation')

    @client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
    message = @client.messages.create(
      from: '+18562494315',
      to: '+19708800176',
      body: "#{project_1.name}"
    )

    puts message.sid
  end
end
