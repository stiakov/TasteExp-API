class V1::ReservationsController < ApplicationController
  def index
    render json: Reservation.all
  end

  def create
    new_reservation = Reservation.create(reservation_params)
    (render json: new_reservation) if new_reservation.valid?
  end

  def show
    my_reservation = Reservation.find_by(reservation_params)
    (render json: my_reservation) if my_reservation
  end

  def update
    reservation = Reservation.find_by_id(params[:id])
    reservation&.update!(reservation_params)
    (render json: reservation) if reservation
  end

  def destroy
    reservation = Reservation.find_by_id(params[:id])
    reservation&.destroy
    (render json: reservation) if reservation
  end

  private

  def reservation_params
    params.permit(:id, :user_id, :commerce_id, :seat, :date_time)
  end
end
