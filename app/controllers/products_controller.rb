class ProductsController < ApplicationController
  def index
  end

  def new
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @product = Item.find(params[:id])
  end
  
  
end
