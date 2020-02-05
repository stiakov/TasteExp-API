class V1::FavoritesController < ApplicationController
  before_action :authenticate_user!
  def index
    render json: Favorite.all
  end

  def show
    fav = Favorite.find_by(favorite_params)
    (render json: fav) if fav
  end

  def user_favorites
    render json: current_user.favorites.order(id: :desc)
  end

  def create
    new_fav = Favorite.create(favorite_params)
    (render json: new_fav) if new_fav.save
  end

  def destroy
    disposed_fav = Favorite.find_by(favorite_params)
    disposed_fav&.destroy
    (render json: disposed_fav) if disposed_fav
  end

  private

  def favorite_params
    params.permit(:id, :user_id, :commerce_id)
  end
end
