class UsersController < ApplicationController

  def show

    @user = current_user.id
    # @user = params[:id] <--- can use for testing
    @owned_agents = Agent.where(user_id: @user)
    @bookings = Booking.where(user_id: @user)
    @agent_bookings = Booking.select do |booking|
    booking.agent.user.id == current_user.id
    end
  end

end
