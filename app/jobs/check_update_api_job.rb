class CheckUpdateApiJob < ApplicationJob
  queue_as :urgent

  def self.perform
    Project.update_api_data
  end
end
