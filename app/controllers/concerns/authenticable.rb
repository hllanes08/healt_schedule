module Authenticable

  # Devise methods overwrites
  def current_user
    @current_user ||= User.find_by(auth_token: request.headers['Authorization'])
    @current_user ||= User.find_by(id: session[:user_id]) if request.format.html?
  end

  def authenticate_with_token!
    render json: { errors: "Not authenticated" },
                status: :unauthorized unless !expired()
  end

  def user_signed_in?
    current_user.present?
  end

  def expired
    if !current_user.nil?
      return Time.now >= current_user.expires_token_at
    else
      return true
    end
  end

end
