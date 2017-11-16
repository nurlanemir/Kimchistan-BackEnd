require 'rails_helper'

RSpec.describe Api::V1::OrdersController, type: :request do
  describe 'POST /v1/orders' do
    context 'create an order' do
      it 'should create an order' do
        post '/api/v1/orders',
          params: {"data"=>{"type"=>"orders",
            "attributes"=>{"email"=>"test@email.se",
              "cart"=>[{"product_id"=>"6",
                "product_name"=>"Herb Salad",
                "price"=>55, "item_quantity"=>1}]}},
                "controller"=>"api/v1/orders",
                "action"=>"create"}

        expect(response.status).to eq 200
      end
    end
  end
end
