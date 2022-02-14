class ProductsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
     @item = Item.new(params_path)
     @item.save
     redirect_to root_path

  end

  def show
  end

  def edit
  end

  private

  def params_path
     params.require(:item).permit(:name, :introduction)
  end
end
