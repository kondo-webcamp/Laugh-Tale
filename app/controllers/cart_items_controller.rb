class CartItemsController < ApplicationController
  def new
    @cart_item = CartItem.new
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    binding.pry
    @cart_item.save!
    redirect_to cart_items_path
  end

  def index
    @cart_items = CartItem.all
  end

  def show
  end

  def destroy
  end

  def ending
  end

  private
  def cart_item_params
      params.require(:cart_item).permit(:item_id, :quantity)
  end

end