class JoinTableOrdersItemsController < ApplicationController
    before_action :create
    def index
    end

    def show
    end

    def create
        @ord = Order.create(user_id: current_user.id)
        @item = current_user.cart.items
        @item.each do |item|
        JoinTableOrdersItem.create(item_id: item.id, order_id: @ord.id)
        end 
        redirect_to root_path
        current_user.cart.destroy

    end

    def destroy
    end
end
