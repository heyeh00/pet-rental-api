class Api::V1::BookingsController < Api::V1::BaseController
  before_action :verify_request

  def index
    @user = User.find(params[:user_id])
    @pets = @user.pets
    render json: { pets: @pets }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      render json: { booking: @booking }
    else
      render json: { status: "fail", msg: "failed to create booking" }
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :pet_id)
  end
end
