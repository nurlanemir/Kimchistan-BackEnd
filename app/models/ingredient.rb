class Ingredient < ApplicationRecord
  has_many :products
  validates_presence_of :name
  validates_presence_of :price
  validates_inclusion_of :status, in: [true, false]
end
