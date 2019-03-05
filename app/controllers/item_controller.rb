class ItemController < ApplicationController
  def index
  	@items = Item.all.sort_by &:created_at
  end

  def show
  	@item = Item.find(params[:id])
  end
end
