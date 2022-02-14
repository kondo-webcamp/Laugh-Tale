class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit

    @customer=Customer.find(params[:id])

    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update

  end
  
  def update
    @customer.find(params[:id])
    @customer.update(params_path)
  end
  
end
