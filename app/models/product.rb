class Product < ApplicationRecord
  has_and_belongs_to_many :ingredients
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :price
  validates_presence_of :image
  validates_presence_of :of_type
  validates_inclusion_of :available, in: [true, false]
  validates_inclusion_of :of_type, in: ['dish', 'salad', 'drink']

  scope :dishes, -> { where(of_type: 'dish', available: true)}
  scope :salads, -> { where(of_type: 'salad', available: true) }
  scope :drinks, -> { where(of_type: 'drink', available: true) }
end
