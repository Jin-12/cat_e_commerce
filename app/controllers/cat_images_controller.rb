class CatImagesController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @item.cat_image.attach(params[:cat_image])
    redirect_to(item_path(@item))
  end
end