require 'rails_helper'

RSpec.describe Api::V1::SaladsController, type: :request do

  describe 'GET /v1/salads' do
    context 'return 1 salad' do
      let!(:salad) {create(:salad, name: 'greek', price: 69)}

      it 'should return a salad' do
        get '/api/v1/salads'

        expect(response.status).to eq 200
        expected_response = eval(file_fixture('salad.txt').read)
        expect(response_json).to eq expected_response.as_json
      end
    end

    context 'return 5 salads' do
      before do
        5.times {create(:salad)}
      end

      it 'gets 5 salads' do
        get '/api/v1/salads'

        expect(response_json['data'].count).to eq 5
      end
    end
  end
end
