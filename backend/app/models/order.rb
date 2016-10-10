class Order < ApplicationRecord
  has_many :pizza_orders
  has_many :pizzas, through: :pizza_orders

end
