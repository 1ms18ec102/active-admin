class ApplicationController < ActionController::Base
  def authenticate_admin!
  if current_user && current_user.is_admin
    # fine
  else
    redirect_to new_user_session_path , alert: "it is for admin users"
  end
end
end
