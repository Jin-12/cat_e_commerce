class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:create, :edit, :update, :destroy, :show]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart


  def index

    @item = @cart.items
    
  end

  def create
    @cart = Cart.new(cart_params)
    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end
  private

  def set_cart
    @cart = current_user.carts.find_by(id: session[:cart_id]) || current_user.carts.create
    session[:cart_id] = @cart.id
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cart_params
    params[:cart]
  end

end
