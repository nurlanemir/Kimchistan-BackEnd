require 'rails_helper'

RSpec.describe ProductLine, type: :model do
  describe 'associations' do
    it {is_expected.to belong_to :product}
    it {is_expected.to belong_to :ingredient}
  end
end
