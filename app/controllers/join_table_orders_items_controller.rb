class JoinTableOrdersItemsController < ApplicationController
    before_action :create

    def index
    end

    def show
    end

    def create
        if current_user.cart.items.empty?
            redirect_to cart_path(current_user.cart.id)
        else
            @ord = Order.create(user_id: current_user.id)
            @item = current_user.cart.items
            @item.each do |item|
                JoinTableOrdersItem.create(item_id: item.id, order_id: @ord.id)
            end 
            order_validation_send
            redirect_to root_path
            current_user.cart.destroy
        end

    end

    def destroy
    end

    def order_validation_send
        UserMailer.order_validation_email(@ord).deliver_now
    end
end
