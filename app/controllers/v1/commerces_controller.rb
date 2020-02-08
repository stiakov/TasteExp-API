class V1::CommercesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  respond_to :json
  def index
    render json: Commerce.all
  end

  def notsaved
    user_favs = current_user.favorites.map{ |item| item.commerce.id }
    filtered = Commerce.where.not(id: user_favs)
    render json: filtered
  end

  def filter_not_saved
    user_favs = current_user.favorites.map{ |item| item.commerce.id }
    not_favs = Commerce.where.not(id: user_favs)
    render json: not_favs.filter_not_saved(commerce_params[:id].to_i)
  end

  def filter_favorites
    user_favs = current_user.favorites
    filtered = user_favs.filter { |item| item.commerce.category_id == commerce_params[:id].to_i }
    render json: filtered
  end

  def create
    commerce = Commerce.create(commerce_params)
    (render json: commerce) if commerce.valid?
  end

  def show
    commerce = Commerce.find_by(commerce_params)
    (render json: commerce) if commerce
  end

  def update
    commerce = Commerce.find_by_id(params[:id])
    commerce&.update(commerce_params)
    (render json: commerce) if commerce
  end

  def destroy
    commerce = Commerce.find_by_id(params[:id])
    commerce&.destroy
    (render json: commerce) if commerce
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
                  :category_id,
                  :user_id,
                  :address)
  end
end
