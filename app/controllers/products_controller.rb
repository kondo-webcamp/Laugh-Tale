class ProductsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
     @item = Item.new(params_path)
     @item.save
     redirect_to product_path(@item.id)
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @product = Item.find(params[:id])
  end

  def update
    @product = Item.find(params[:id])
    @product.update(params_path)
  end

  private

  def params_path
     params.require(:item).permit(:name, :introduction, :price)
  end
end
