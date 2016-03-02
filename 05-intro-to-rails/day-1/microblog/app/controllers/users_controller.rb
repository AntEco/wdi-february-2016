class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  # these respond to the actions listed above
  def create
    User.create(params[:user])

    redirect_to users_path
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])

    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to :back
  end
end
