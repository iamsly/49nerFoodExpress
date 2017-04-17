class OrdersController < ApplicationController
 before_action :set_order, only: [:edit, :update, :show, :destroy]
 
 def index
     @orders = Order.all #getting all the orders tha was created '@orders' can be any name
 end
 
 def new
     @order = Order.new
 end
 
 def edit
     
 end
 
 def update
     
     if @order.update(order_params)
          flash[:notice] = "Order was successfully updated"
          redirect_to order_path(@order)
     else
         render 'edit'
     end
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
    
 end
 
 def destroy
     
     @order.destroy
     flash[:notice] = "Order item was removed from history"
     redirect_to order_path(@order)
 end
 
 private
 def set_order
     @order = Order.find(params[:id])
 end
  def order_params
   params.require(:order).permit(:item, :drink, :room, :description)
  end
 
end