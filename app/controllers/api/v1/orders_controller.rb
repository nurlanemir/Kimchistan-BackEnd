class Api::V1::OrdersController < ApplicationController

  def create
    pickup_time = (Time.now + 30.minutes).strftime("%H:%M")
    customer_email = params[:data][:attributes][:email]
    cart = params[:data][:attributes][:cart]
    OrderMailer.order(customer_email, cart, pickup_time).deliver_now
    render :json
  end
end
