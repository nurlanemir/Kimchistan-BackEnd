class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image, :available
  attribute :of_type, key: 'type'
end
