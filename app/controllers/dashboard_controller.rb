class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all.order(time: :asc)
  end
end
