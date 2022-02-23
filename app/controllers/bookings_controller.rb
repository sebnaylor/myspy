class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
  end

  def index
    @bookings = Booking.all
  end

  def update
  end

  def show
  end

  # private
  # insert hard params
end
