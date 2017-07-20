class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
   include Authenticable

  def login_required?
     redirect_to api_v1_login_path unless user_signed_in?
  end

end
