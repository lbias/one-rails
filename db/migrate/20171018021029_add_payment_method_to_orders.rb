class AddPaymentMethodToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :payment_menthod, :string
  end
end
