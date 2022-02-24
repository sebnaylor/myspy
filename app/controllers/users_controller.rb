class UsersController < ApplicationController

  def show

    # @user = current_user.id <-- change
    @user = params[:id]
    @owned_agents = Agent.where(user_id: @user)
    @bookings = Booking.where(user_id: @user)
    @agent_bookings = Booking.select do |booking|
    booking.agent.user.id == params[:id].to_i
    end
  end

end
