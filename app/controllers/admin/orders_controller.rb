class Admin::OrdersController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @orders = Order.order("id DESC")
  end  

  def show
    @order = Order.find(params[:id])
    @product_lists = @order.product_lists
  end
  
  def ship
    @order = Order.find(params[:id])
    @order.ship!
    OrderMailer.notify_ship(@order).deliver!
    redirect_to admin_order_path
  end
  
  def deliver
    @order = Order.find(params[:id])
    @order.deliver!
    redirect_to admin_order_path
  end
  
  def cancel_order
    @order = Order.find(params[:id])
    @order.cancel_order!
    OrderMailer.notify_cancel_order(@order).deliver!
    redirect_to admin_order_path
  end
  
  def return_goods
    @order = Order.find(params[:id])
    @order.return_goods!
    redirect_to admin_order_path
  end
end
