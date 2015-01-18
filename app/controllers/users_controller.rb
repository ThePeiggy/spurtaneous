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
    @user.location = "Ann Arbor, MI"
    if @user.save
      session[:user_id] = @user.id
      redirect_to 'https://api.venmo.com/v1/oauth/authorize?client_id=2275&scope=make_payments'
    else
      render 'new'
    end
  end

  def edit
      @user = User.find(params[:id])
  end

  def store_token
    @current_user.venmo_token = params[:access_token]
    @current_user.save
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to current_user
    else
      render 'edit'
    end
  end

  private
  	def user_params
  	  params.require(:user).permit(:email, :password, :password_confirmation, :firstname, :lastname, :limit)
  	end
end
