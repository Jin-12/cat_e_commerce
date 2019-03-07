class OrdersController < ApplicationController
    def index
        redirect_to root_path
    end

    def show

    end

    def final_price
      @total = 0
      @item = current_user.cart.items
      
        @item.each do |item|
          @total = @total + item.price
        end
    end

    def new 
      @final_price = final_price
    end

    def create
      @final_price = final_price

      # Amount in cents
      @amount = 500
    
      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })
    
      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @amount,
        description: 'Rails Stripe customer',
        currency: 'eur',
      })

    @ord = Order.create(user_id: current_user.id)
    @item = current_user.cart.items
    @item.each do |item|
    JoinTableOrdersItem.create(item_id: item.id, order_id: @ord.id)
    end

    order_validation_send

    current_user.cart.destroy
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
      redirect_to 
    end 

    def destroy
    end

    def order_validation_send
        UserMailer.order_validation_email(@ord).deliver_now
        AdminMailer.order_validation_email(@ord).deliver_now
    end
end
