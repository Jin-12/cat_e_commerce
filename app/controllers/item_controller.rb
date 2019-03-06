class ItemController < ApplicationController
  def index
  end

  def show
  	@item = Item.find(params[:id])
  end

  def create
    
  end
end
