class JoinTableCartsItemsController < ApplicationController
    def create
        @link = JoinTableCartsItems.create(item_id: params[:item_id], cart_id: Cart(current_user.id))
    end
end
