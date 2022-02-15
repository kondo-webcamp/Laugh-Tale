class ProductsCustomersController < ApplicationController
  def index
    @items = Item.all
  end
end
