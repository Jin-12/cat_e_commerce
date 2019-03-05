class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    puts "#" * 50
    puts params
  end

end
