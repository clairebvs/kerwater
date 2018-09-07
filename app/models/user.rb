class User < ApplicationRecord
    def self.create_with_omniauth(user_info)
      create! do |user|
        user.provider = user_info["provider"]
        user.uid = user_info["uid"]
        user.username = user_info["info"]["name"]
        user.oauth_token = user_info["credentials"]["token"]
      end
    end
end
