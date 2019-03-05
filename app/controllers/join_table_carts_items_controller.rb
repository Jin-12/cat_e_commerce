class JoinTableCartsItemsController < ApplicationController
    before_action :create

    def index
        redirect_to cart_path(current_user.id)
    end
    
    def create
        @cart_user = User.find(current_user.id).cart.id
        @link = JoinTableCartsItem.create(item_id: params[:item_id], cart_id: @cart_user)
    end
end