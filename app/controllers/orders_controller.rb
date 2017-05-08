class OrdersController < ApplicationController
 before_action :set_order, only: [:edit, :update, :show, :destroy]
 before_action :require_user, except: [:index, :show]
 before_action :require_same_user, only: [:edit, :update, :destroy]
 
 def index
     @orders = Order.all
 end
 
 def new
     @order = Order.new
 end
 
 def edit
     
 end
 
 def update
     
     if @order.update(order_params)
          flash[:success] = "Order was successfully updated"
          redirect_to order_path(@order)
     else
         render 'edit'
     end
 end
 
 def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save
         flash[:success] = "Order was successfully created"
         redirect_to order_path(@order)
    else
        render 'new'
    end
 end
 
 def show
    
 end
 
 def destroy
     
     @order.destroy
     flash[:danger] = "Order item was removed from history"
     redirect_to orders_path(@order)
 end
 
private
 def set_order
     @order = Order.find(params[:id])
 end
 
 def order_params
   params.require(:order).permit(:item, :drink, :room, :description)
 end
  
 def require_same_user
  if current_user != @order.user
   flash[:danger] = "You can only edit or delete your own orders"
   redirect_to root_path
  end
 end
 
end