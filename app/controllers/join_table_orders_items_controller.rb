class JoinTableOrdersItemsController < ApplicationController
    before_action :create
    def index
    end

    def show
    end

    def create
        puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
        @ord = Order.create(user_id: current_user.id)
        @item = current_user.cart.items
        @item.each do |item|
        @oi = JoinTableOrdersItem.create(item_id: item.id, order_id: @ord.id)
        end 
        puts "OOOOOOOOOOOJOJOJIONBPIUBPIBLBLUBPIUBOUBLBNPIBPIDUBOUDBPIUDBIUDNODIBO"
        redirect_to root_path
        session[:order_id] = @ord.id
    end

    def destroy
    end
end
