class ProductsCustomersController < ApplicationController
  def index
    @items = Item.where(is_active: true)
    @genres = Genre.all
  end
  
  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end
  
  private

  def params_path
    params.require(:item).permit(:name, :introduction, :price,:image,:genre_id)
  end
end
