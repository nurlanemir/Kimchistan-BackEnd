class Product < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :price
  validates_presence_of :image
  validates_presence_of :type
end
