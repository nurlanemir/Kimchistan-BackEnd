require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'DB table' do
    it {is_expected.to have_db_column :name}
    it {is_expected.to have_db_column :description}
    it {is_expected.to have_db_column :price}
    it {is_expected.to have_db_column :type}
  end

  describe 'Validations' do
    it {is_expected.to validate_presence_of :name}
    it {is_expected.to validate_presence_of :description}
    it {is_expected.to validate_presence_of :price}
    it {is_expected.to validate_presence_of :type}
  end
end
