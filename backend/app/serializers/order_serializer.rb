class OrderSerializer < ActiveModel::Serializer
  attributes :id
  has_many :pizza_orders
end
