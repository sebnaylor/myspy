class AgentsController < ApplicationController
  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(agent_params)
    @agent.user = current_user
    # if @agent.save
      @agent.save
      redirect_to agent_path(@agent)
    # else
    #   render :new
    # end
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

  def agent_params
    params.require(:agent).permit(:name, :price, :skills, :category, :height, :years_of_service, :weapon, :evilness, :ineptitude, :gadgets, :marital_status)
  end

end
