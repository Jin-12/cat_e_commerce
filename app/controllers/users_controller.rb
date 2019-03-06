class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update]
  before_action :correct_user, only: [:show, :edit, :update]

  after_create :set_cart_applicationcontroller

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def correct_user
    @user = User.find(params[:id])
    if current_user != @user
      flash[:alert] = "This profile is not accessible"
      redirect_to root_path
    end
  end
end
