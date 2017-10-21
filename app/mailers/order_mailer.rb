class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists
    mail(to: @user.email, subject: 'Thanks for shopping with us. 
                                    Here is the product list #{order.token}')
  end
end
