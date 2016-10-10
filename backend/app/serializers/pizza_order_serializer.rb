class PizzaOrderSerializer < ActiveModel::Serializer
  attributes :id, :amount
  belongs_to :order
  belongs_to :pizza
end
