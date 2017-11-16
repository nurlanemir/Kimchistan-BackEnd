class Api::V1::OrdersController < ApplicationController

  def create
    pickup_time = Time.now + 30.minutes
    email = params[:data][:attributes][:email]
    cart = params[:data][:attributes][:cart]

    render :json
  end
end
