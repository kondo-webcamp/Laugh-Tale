class CartItemsController < ApplicationController
  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    @cart_item.save
    redirect_to cart_items_path
  end
  def index
    @cart_items = CartItem.all
  end
  
  def show
  end
  
  def update
    @cart_item = CartItem.find(params[:id])
    @cart_items = CartItem.all
    @cart_item.update(cart_item_params)
    render :index
  end
  def destroy
    
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    @cart_items = CartItem.all
    render :index
  end
  def all_destroy
    @cart_items = CartItem.all
    @cart_items.destroy_all
    render :index
  end
  def ending
  end
  private
  def cart_item_params
      params.require(:cart_item).permit(:customer_id, :item_id, :quantity)
  end
end
