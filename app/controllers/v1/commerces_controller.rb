class V1::CommercesController < ApplicationController
  respond_to :json
  def index
    render json: Commerce.all
  end

  def create
    commerce = Commerce.create(commerce_params)
    commerce.valid? ? (render json: commerce) : no_valid
  end

  def show
    commerce = Commerce.find_by(commerce_params)
    commerce ? (render json: commerce) : not_found
  end

  def update
    commerce = Commerce.find_by_id(params[:id])
    commerce&.update(commerce_params)
    commerce ? (render json: commerce) : no_valid
  end

  def destroy
    commerce = Commerce.find_by_id(params[:id])
    commerce&.destroy
    commerce ? (render json: commerce) : no_valid
  end

  private

  def commerce_params
    params.permit(:id,
                  :name,
                  :country_id,
                  :state,
                  :city,
                  :mobile,
                  :landline,
                  :email,
                  :website,
                  :instagram,
                  :commerce_type_id,
                  :user_id,
                  :address)
    end
end
