class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description
end
