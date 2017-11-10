class Ingredient < ApplicationRecord
  has_and_belongs_to_many :products
  validates_presence_of :name
  validates_presence_of :price
  validates_inclusion_of :available, in: [true, false]
end
