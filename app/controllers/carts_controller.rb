class CartsController < ApplicationController
  def index
    @item = Item.all
  end
end
