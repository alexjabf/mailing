class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_action :filter_admin!

  def filter_admin!
    authenticate_user!
    redirect_to root_path, alert: "NO TIENNES ACCESSO" unless current_user.admin?
  end
  
end
