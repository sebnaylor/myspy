class PagesController < ApplicationController
  def home
    @agents = Agent.first(4)
  end
end
