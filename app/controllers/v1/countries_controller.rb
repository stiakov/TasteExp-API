class V1::CountriesController < ApplicationController
  def index
    @countries = Country.all
    render json: @countries
  end

  def show
    @country = Country.find_by(country_params)
    render json: @country
  end

  private

  def country_params
    params.permit(:id)
  end
end
