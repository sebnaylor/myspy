class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @agent = Agent.find(params[:agent_id])
    @user = current_user
    @booking.agent = @agent
    @booking.user = @user
    if @booking.save
      redirect_to user_path(@user)
    else
      render :new
      # Seb: pretty sure I neeed to update the :new in line above to make it work. Need to push and pull first to test properly
    end
  end

  def index
    @bookings = Booking.all
  end

  def update
  end

  def show
    @bookings = Booking.all
  end

  def destroy
    @booking = Booking.find(params[:id])
    @user_id = @booking.user_id
    @booking.destroy
    redirect_to user_path(@user_id)
  end
  # private
  # insert hard params
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
