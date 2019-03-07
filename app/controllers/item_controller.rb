class ItemController < ApplicationController
  def index
    @items = Item.all.paginate(page: params[:page], per_page: 9)
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    
  end
end
