class OrdersController < ApplicationController

  def index
    @orders = Order.all.order(created_at: :desc)
    @order_details = OrderDetail.all
  end

  def show

    @order =Order.find(params[:id])
    @order_details =@order.order_details

  end

  def new

    @order = Order.new

  end

  def create
    cart_items = current_customer.cart_items.all
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id


    if@order.save

      cart_items.each do |cart|
        @order_detail = OrderDetail.new
        @order_detail.order_id = @order.id
        @order_detail.item_id = cart.item_id

        @order_detail.price = cart.item.price
        @order_detail.quantity = cart.quantity



        @order_detail.save
      end
            redirect_to check_path(@order)
            cart_items.destroy_all
    else
      @order = Order.new(order_params)
      render :new
    end
  end
     def update
       @order = Order.find(params[:id])
       @order_details =@order.order_details
       if @order.status == "check_pay"
         @order_details.each do |order_detail|
        order_detail.making_status = "waiting_production"
        order_detail.save
         end
       end
    redirect_to request.referer
     end

      def check

        @order = Order.find(params[:id])
        @order_details = @order.order_details

      end
    private
    def order_params
        params.require(:order).permit(:address,:payment_method,:postal_code,:name, :status, :making_status)
    end
end