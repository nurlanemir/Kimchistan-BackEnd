class Ingredient < ApplicationRecord
  has_many :product_lines
  has_many :products, through: :product_lines
  validates_presence_of :name
  validates_presence_of :price
  validates_inclusion_of :status, in: [true, false]
end
