class Api::V1::BookingsController < Api::V1::BaseController
  def index
    @bookings = Booking.all
    render json: { bookings: @bookings }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      render json: { booking: @booking}
    else
      render json: { status: "fail", msg: "failed to create booking" }
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :pet_id)
  end
end
