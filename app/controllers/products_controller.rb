class ProductsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    @genres = Genre.all
  end

  def create
     @item = Item.new(params_path)
     @item.save
     redirect_to product_path(@item.id)
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

  def edit
    @product = Item.find(params[:id])
    @genres = Genre.all
  end

  def update
    @product = Item.find(params[:id])
    @product.update(params_path)
    flash[:notice] = "編集できました"
    redirect_to products_path(@product)
  end

  private

  def params_path

    params.require(:item).permit(:name, :introduction, :price, :image, :genre_id, :is_active)
  end
end
