class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new

  end
  def create
    @user = User.new(user_params)
    render plain: @user
  end

  private
	def user_params
	  params.require(:user).permit(:email, :password)
	end
end
