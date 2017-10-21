class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists
    mail(to: @user.email, subject: 'Thanks for shopping with us. 
                                    Here is the product list #{order.token}')
  end
  
  def apply_cancel(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists
    mail(to: "admin@test.com" , subject: "[OneStore] User #{order.user.email}applied to cancel order #{order.token}")
  end  

  def notify_ship(order)
    @order        = order
    @user         = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[OneStore] Your order #{order.token} has been shipped.")
  end

  def notify_cancel_order(order)
    @order        = order
    @user         = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[JDStore] Your order #{order.token} has been cancelled.")
  end
end
