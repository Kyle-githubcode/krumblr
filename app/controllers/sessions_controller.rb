class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: user_params[:email].downcase)
    respond_to do |format|
      if user && user.authenticate(user_params[:password])
        log_in(user)
        format.html { redirect_to user, notice: 'Login Successful' }
      else
        # error
        format.html { render :new }
      end
    end
  end

  def destroy
  end

  private
  def user_params
    params.permit(:email, :password)
  end
end
