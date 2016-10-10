class AddAmountToPizzaOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :pizza_orders, :amount, :integer
  end
end
