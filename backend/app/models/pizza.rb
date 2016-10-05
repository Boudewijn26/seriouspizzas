class Pizza < ApplicationRecord
  has_many :orders, through: :pizza_orders
end
