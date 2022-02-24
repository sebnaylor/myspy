class AgentsController < ApplicationController
  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(agent_params)
    @agent.user = current_user
    if @agent.save
      redirect_to agent_path(@agent)
    else
      render :new
    end
  end

  def index
    @agents = Agent.all

    # the `geocoded` scope filters only agents with coordinates (latitude & longitude)
    @markers = @agents.geocoded.map do |agent|
      {
        lat: agent.latitude,
        lng: agent.longitude,
        info_window: render_to_string(partial: "info_window", locals: { agent: agent })
      }
    end
  end

  def show
    # As a visitor I can view the agent's details, reviews including skill, dates available, bio, image and price
    @agent = Agent.find(params[:id])
    # returns a boolean based on whether the signed in user owns the agent
    @owner = @agent[:user_id] == current_user.id
  end

  def edit
    @agent = Agent.find(params[:id])
  end

  def update
    @agent = Agent.find(params[:id])
    if @agent.update(agent_params)
      redirect_to agent_path(@agent)
    else
      render :new
    end
  end

  def destroy
    @agent = Agent.find(params[:id])
    @agent.destroy
    redirect_to agents_path
  end
  private

  def agent_params
    params.require(:agent).permit(:name, :price, :skills, :category, :height, :years_of_service, :weapon, :evilness, :ineptitude, :gadgets, :marital_status, :location, :longitude, :latitude, :photo)
  end

end
