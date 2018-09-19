class TwilioService

  def send_sms(project, phone)
    @client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
    message = @client.messages.create(
      from: '+18562494315',
      to: phone,
      body: "#{project.name}"
    )
  end
end
