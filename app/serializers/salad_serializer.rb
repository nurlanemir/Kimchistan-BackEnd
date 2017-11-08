class SaladSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image
end