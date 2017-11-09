require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'DB table' do
    it {is_expected.to have_db_column :name}
    it {is_expected.to have_db_column :description}
    it {is_expected.to have_db_column :price}
    it {is_expected.to have_db_column :of_type}
    it {is_expected.to have_db_column :status}
  end

  describe 'Validations' do
    it {is_expected.to validate_presence_of :name}
    it {is_expected.to validate_presence_of :description}
    it {is_expected.to validate_presence_of :price}
    it {is_expected.to validate_presence_of :of_type}
    # it {is_expected.to validate_inclusion_of :status}
  end

  describe 'Scope' do
    before do
      5.times {create(:product, status: true)}
      5.times {create(:product, of_type: 'salad', status: true)}
      5.times {create(:product, of_type: 'drink', status: true)}
      create(:product, of_type: 'salad', status: false)
      create(:product, of_type: 'drink', status: false)
      create(:product, of_type: 'dish', status: false)
    end


    it "should have a dishes named scope that returns dishes" do
      expect(Product.dishes.count).to be(5)
    end
    it "does not return unavailable dishes" do
      expect(Product.dishes).to_not include(Product.where("status = false"))
    end
    it "should have a salads named scope that returns salads" do
      expect(Product.salads.count).to be(5)
    end
    it "does not return unavailable salads" do
      expect(Product.salads).to_not include(Product.where("status = false"))
    end
    it "should have a drinks named scope that returns drinks" do
      expect(Product.drinks.count).to be(5)
    end
    it "does not return unavailable drinks" do
      expect(Product.drinks).to_not include(Product.where("status = false"))
    end
  end
end
