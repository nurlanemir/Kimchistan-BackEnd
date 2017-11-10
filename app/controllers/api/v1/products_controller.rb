class Api::V1::ProductsController < ApplicationController

  def index
    products = Product.all
    render json: products #, include: :ingredients
  end
end
