class Project::SmsController < ApplicationController

  def create
    @project = Project.find(params[:id])
    @phone = params[:phone_number]
    twilio_service = TwilioService.new
    twilio_service.send_sms(@project, @phone)

    redirect_to project_path(@project)
  end
end
