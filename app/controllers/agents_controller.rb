class AgentsController < ApplicationController
  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(list_params)
    if @agent.save
      redirect_to agents_path
    else
      render :new
    end
  end

  def index
    @agents = Agent.all
  end

  private

  def list_params
    params.require(:agent).permit(:name, :price, :skills, :category, :height, :years_of_service, :weapon, :evilness, :ineptitude, :gadgets, :marital_status)
  end

end
