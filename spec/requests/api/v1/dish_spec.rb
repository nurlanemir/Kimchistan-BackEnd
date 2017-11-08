require 'rails_helper'

RSpec.describe Api::V1::DishesController, type: :request do
  describe 'GET /v1/dishes' do
    context 'return 1 dish' do
      let!(:dish) { create(:dish, name: 'dumplings', price: 89) }

      it 'should return a dish' do
        get '/api/v1/dishes'

        expect(response.status).to eq 200
        expected_response = eval(file_fixture('dish.txt').read)
        expect(response_json).to eq expected_response.as_json
      end
    end

    context 'return 5 dishes' do
      before do
        5.times {create(:dish)}
      end

      it 'gets 5 dishes' do
        get '/api/v1/dishes'

        expect(response_json['data'].count).to eq 5
      end
    end
  end
end
