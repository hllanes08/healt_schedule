module Authenticable

  # Devise methods overwrites
  def current_user
    @current_user ||= request.format.html? ? login_by_session : login_by_token
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

  def login_by_token
    User.find_by(auth_token: request.headers['Authorization'])
  end

  def login_by_session
    User.find_by(id: session[:user_id])
  end
end
