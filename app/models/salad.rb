class Salad < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :price
  validates_presence_of :image
end
