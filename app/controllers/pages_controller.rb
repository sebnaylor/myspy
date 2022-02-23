class PagesController < ApplicationController
  def home
    @agents = Agent.last(4)
  end
end
