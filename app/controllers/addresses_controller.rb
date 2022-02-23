class AddressesController < ApplicationController
  def index
     @address = Address.new
     @addresses = current_customer.addresses
  end
  def create
    @address = Address.new(params_path)
    @address.customer_id = current_customer.id
    @address.save
    
    render :index
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])
   if @address.update(params_path)
    redirect_to addresses_path
   else
    render :edit
   end
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to addresses_path
  end

  private

  def params_path
    params.require(:address).permit(:name, :postal_code, :address)
  end
end
