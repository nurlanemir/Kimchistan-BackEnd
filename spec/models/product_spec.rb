require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'DB table' do
    it {is_expected.to have_db_column :name}
    it {is_expected.to have_db_column :description}
    it {is_expected.to have_db_column :price}
    it {is_expected.to have_db_column :of_type}
    it {is_expected.to have_db_column :available}
  end

  describe 'Validations' do
    it {is_expected.to validate_presence_of :name}
    it {is_expected.to validate_presence_of :description}
    it {is_expected.to validate_presence_of :price}
    it {is_expected.to validate_presence_of :of_type}
    it {is_expected.to validate_inclusion_of(:of_type).in_array(['dish', 'salad', 'drink'])}
  end

  describe 'Scopes' do
    before do
      5.times do
        prod = create(:product, available: true)
        5.times {create(:ingredient, available: true)}
        prod.ingredients.push Ingredient.all
      end
      5.times {create(:product, of_type: 'salad', available: true)}
      5.times {create(:product, of_type: 'drink', available: true)}
      create(:product, of_type: 'salad', available: false)
      create(:product, of_type: 'drink', available: false)
      create(:product, of_type: 'dish', available: false)
    end


    it "should have a dishes named scope that returns dishes" do
      expect(Product.dishes.count).to be(5)
    end

    it "does not return unavailable dishes" do
      expect(Product.dishes).to_not include(Product.where("available = false"))
    end

    it "should have a salads named scope that returns salads" do
      expect(Product.salads.count).to be(5)
    end

    it "does not return unavailable salads" do
      expect(Product.salads).to_not include(Product.where("available = false"))
    end

    it "should have a drinks named scope that returns drinks" do
      expect(Product.drinks.count).to be(5)
    end

    it "does not return unavailable drinks" do
      expect(Product.drinks).to_not include(Product.where("available = false"))
    end
  end

  describe 'associations' do
    it {is_expected.to have_and_belong_to_many(:ingredients)}
  end
end
