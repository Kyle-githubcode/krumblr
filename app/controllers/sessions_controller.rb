class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: user_params[:email].downcase)
    if user && user.authenticate(user_params[:password])
      # login user
    else
      # error
      render 'new'
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:session).permit(:email, :password)
  end
end
