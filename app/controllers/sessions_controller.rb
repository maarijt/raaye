class SessionsController < ApplicationController
  skip_before_filter :set_current_user
  def new
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    @current_user = user
    session[:user_id] = user.id
    session[:username] = user.name
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    session[:username] = nil
    @current_user = nil
    redirect_to welcome_path
    session[:session_destroyed] = true
  end
end
