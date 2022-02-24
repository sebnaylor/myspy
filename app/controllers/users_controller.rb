class UsersController < ApplicationController

  def show
    @user = current_user.id
    @owned_agents = Agent.where(user_id: @user)
    @bookings = Booking.where(user_id: @user)
  end
end
