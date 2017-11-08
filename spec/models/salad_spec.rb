require 'rails_helper'

RSpec.describe Salad, type: :model do
  describe 'DB table' do
    it {is_expected.to have_db_column :name}
    it {is_expected.to have_db_column :image}
    it {is_expected.to have_db_column :price}
  end

  describe 'Validations' do
    it {is_expected.to validate_presence_of :name}
    it {is_expected.to validate_presence_of :image}
    it {is_expected.to validate_presence_of :price}
  end
end

