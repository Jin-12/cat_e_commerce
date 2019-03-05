class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    if current_user != @user
      # TODO Put a flash msg here
      puts "NOT THE RIGHT USER, SORRY"
      redirect_to root_path
    end
    @user = User.find(params[:id])
  end
end
