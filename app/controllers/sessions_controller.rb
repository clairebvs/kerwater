class SessionsController < ApplicationController
  def create
    # user = User.from_omniauth(env["omniauth.auth"])
    user_info = request.env['omniauth.auth']
    # require "pry"; binding.pry
    user = User.from_omniauth(user_info)
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
