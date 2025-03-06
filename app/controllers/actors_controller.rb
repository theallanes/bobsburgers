class ActorsController < ApplicationController
  def index
    @actors = Actor.page(params[:page]).per(20).order("actor_name ASC")
  end

  def show
    @actor = Actor.includes(:characters).find(params[:id])
  end
end
