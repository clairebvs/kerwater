class SessionsController < ApplicationController
  def create
    user_info = request.env['omniauth.auth']
    user = User.create_with_omniauth(user_info)
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
