class ActorsController < ApplicationController
  def index
    @actors = Actor.order("actor_name ASC").limit(100)
  end

  def show
    @actor = Actor.find(params[:id])
  end
end
