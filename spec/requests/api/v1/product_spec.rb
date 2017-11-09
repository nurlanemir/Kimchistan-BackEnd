require 'rails_helper'

RSpec.describe Api::V1::ProductsController, type: :request do
  describe 'GET /v1/products' do
    context 'return 1 product' do
      let!(:product) {create(:product, name: 'dumplings', price: 89, of_type: 'dish', status: true, image: 'Image')}

      it 'should return a product' do
        get '/api/v1/products'

        expect(response.status).to eq 200
        expected_response = eval(file_fixture('product.txt').read)
        expect(response_json).to eq expected_response.as_json
      end
    end

    context 'return 5 products' do
      before do
        5.times {create(:product)}
      end

      it 'gets 5 products' do
        get '/api/v1/products'

        expect(response_json['data'].count).to eq 5
      end
    end
  end
end
