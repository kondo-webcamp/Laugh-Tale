class ProductsCustomersController < ApplicationController
  def index
    @items = Item.all
    @genres = Genre.all
  end
end
