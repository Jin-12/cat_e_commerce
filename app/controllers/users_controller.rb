class UsersController < ApplicationController
  before_action :check_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    puts "#" * 50
    puts params
  end

private

  def check_user
    authenticate_user!
    if current_user != @user
      redirect_to root_path, alert: "sorry, not your profile"
    end
  end

  
end
