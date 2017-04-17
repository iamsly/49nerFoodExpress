class OrdersController < ApplicationController
 def new
     @order = Order.new
 end
 
 def create
    @order = Order.new(order_params)
    if @order.save
         flash[:notice] = "Order was successfully created"
         redirect_to order_path(@order)
    else
        render 'new'
    end
 end
 
 def show
     @order = Order.find(params[:id])
 end
 
 private
  def order_params
   params.require(:order).permit(:item, :drink, :room, :description)
  end
 
end