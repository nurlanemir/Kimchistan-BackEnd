class Api::V1::SaladsController < ApplicationController

  def index
    salads = Salad.all
    render json: salads
  end
end
