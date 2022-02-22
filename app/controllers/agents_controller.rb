class AgentsController < ApplicationController
  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(list_params)
    @agent.save
    render :new
  end

  private

  def list_params
    params.require(:agent).permit(:name, :price, :skills, :category, :height, :years_of_service, :weapon, :evilness, :ineptitude, :gadgets)
  end

end
