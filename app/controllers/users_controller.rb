class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      remember @user
      flash[:info] = "Mec tu gères il vient d'être créé !!!!!!"
      redirect_to root_url
    else
      render 'new'
    end
  end


  private

    def user_params
      params.require(:user).permit(:username, :email, :password,
                                   :password_confirmation)
    end
end
