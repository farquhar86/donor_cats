class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to profile_path
      flash[:error] = "You are already logged in"
    else
      render :new
    end
  end

  def create
    user = User.find_by_email(user_params[:email])
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Successfully logged in"
      redirect_to profile_path(user)
    else
      flash[:error] = "Incorrect email or password, please try again"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Successfully logged out"
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
