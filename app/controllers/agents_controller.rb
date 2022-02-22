class AgentsController < ApplicationController
  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(list_params)
    @agent.save
    render :new
  end

  def index
    @agents = Agent.all
  end

  def show
    # As a visitor I can view the agent's details, reviews including skill, dates available, bio, image and price
    @agent = Agent.find(params[:id])
    # returns a boolean based on whether the signed in user owns the agent
    @owner = params[:user_id] == current_user
  end

  private

  def list_params
    params.require(:agent).permit(:name, :price, :skills, :category, :height, :years_of_service, :weapon, :evilness, :ineptitude, :gadgets)
  end

end
