class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_admin_user!
    redirect_to new_user_session_path unless current_user.try(:is_admin?)
  end

  def authenticate_google_apps_user!
    redirect_to user_omniauth_authorize_path(:google_oauth2) unless user_signed_in?
  end
end
