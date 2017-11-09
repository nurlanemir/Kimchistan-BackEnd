class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image, :status
  attribute :of_type, key: 'type'
end
