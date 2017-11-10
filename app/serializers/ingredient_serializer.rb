class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :available
end