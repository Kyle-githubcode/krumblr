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
        flash.now[:error] = 'Invalid email or password'
        format.html { render :new }
      end
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  private
  def user_params
    params.permit(:email, :password)
  end
end
