require 'rails_helper'

RSpec.describe Ingredient, type: :model do

  describe 'DB table' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_db_column :name}
    it {is_expected.to have_db_column :price}
  end

  context 'validations' do
    it {is_expected.to validate_presence_of :name}
    it {is_expected.to validate_presence_of :price}
  end

  describe 'associations' do
    it {is_expected.to have_many(:products)}
  end
end

