class Order < ApplicationRecord
  belongs_to :user
  has_many :pizzas
end
