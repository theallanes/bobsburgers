class EpisodesController < ApplicationController
  def index
    @episodes = Episode.order("id ASC").limit(100)
  end

  def show
    @episode = Episode.find(params[:id])
  end
end
