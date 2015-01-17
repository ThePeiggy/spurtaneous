class UsersController < ApplicationController
  
  before_filter :authorize, only: [:show]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def store_token
    @current_user.venmo_token = params[:access_token]
    @current_user.save
  end

  private
  	def user_params
  	  params.require(:user).permit(:email, :password, :password_confirmation, :firstname, :lastname)
  	end
end
