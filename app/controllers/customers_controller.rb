class CustomersController < ApplicationController
  def index
  end

  def show
  end

  def edit
    @customer=Customer.find(params[:id])
  end
  
  def update
    @customer.find(params[:id])
    @customer.update(params_path)
  end
  
end
