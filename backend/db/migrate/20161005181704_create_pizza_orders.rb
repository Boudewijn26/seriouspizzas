class CreatePizzaOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :pizza_orders do |t|
      t.references :order, foreign_key: true
      t.references :pizza, foreign_key: true

      t.timestamps
    end
  end
end
