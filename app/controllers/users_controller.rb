class UsersController < ApplicationController
  def new
    if current_user
      redirect_to root_path
    else
      @user = User.new
      render :new
    end
  end

  def create
    if current_user
      redirect_to root_path
      flash[:error] = "You are already logged in"
    else
      @user = User.new(user_params)
      if @user.save
        #login user
        session[:user_id] = @user.id
        #redirect to user#show w/ success message
        redirect_to profile_path, flash: { success: "Successfully signed up!" }
      else
        #there was an error, go back to signup page & display message
        redirect_to signup_path, flash: { error: @user.errors.full_messages.to_sentence }
      end
    end
  end

  def show
    @user = User.find(session[:user_id])
    render :show
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :city)
    end

end