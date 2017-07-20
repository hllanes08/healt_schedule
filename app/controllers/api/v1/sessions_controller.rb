class API::V1::SessionsController < ApplicationController
  include SessionsHelper

  def create
    user_password = params[:session][:password]
    user_email = params[:session][:email]
    user = user_email.present? && User.find_by(email: user_email)

    respond_to do |format|
      if user && user.valid_password?(user_password)
        sign_in user, store: false
          user.generate_authentication_token!
        user.save
        format.json { render json:  { user:user,success:true}, status: 200 }
        log_in user
        format.html { redirect_to '/admin' }
      else
        format.json { render json: { errors: "Invalid email or password",success: false }, status: 422 }
        flash.now[:danger] = 'Invalid email/password combination'
        format.html { render 'layouts/login' }
      end
    end
  end

  def destroy
    user = User.find_by(auth_token: params[:id])
    user.generate_authentication_token!
    user.save
    head 204
  end

  def new
    render 'layouts/login' 
  end

end
