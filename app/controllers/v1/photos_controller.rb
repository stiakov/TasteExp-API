class V1::PhotosController < ApplicationController
  def create
    user = User.find_by_id(params[:user_id]) if params[:entity_id] == 'person'
    user = Commerce.find_by_id(params[:commerce_id]) if params[:entity_id] == 'commerce'
    new_photo = user.photos.create(image_data: params[:image_data]) if user
    (render json: new_photo) if new_photo
  end

  def show_user
    user = User.find_by_id(params[:id])
    photos = user.photos.all if user
    (render json: photos) if photos
  end

  def show_commerce
    user = Commerce.find_by_id(params[:id])
    photos = user.photos.all if user
    (render json: photos) if photos
  end

  def destroy
    photo = Photo.find_by_id(params[:id])
    photo&.destroy
    (render json: photo) if photo
  end

  private

  def photo_params
    params.permit(:id, :entity_id, :user_id, :commerce_id, :image_data)
  end
end
