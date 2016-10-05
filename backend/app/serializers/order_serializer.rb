class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  has_one :user
  has_one :pizza
end
