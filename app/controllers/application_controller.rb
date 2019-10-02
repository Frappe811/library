class BookingController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def new
  	redirect_to 'new'
  end

  def create
  	Booking.create(booking_id: params[:id])
  end

  private

  def params
  	params.require(:booking_id)
  end
end
