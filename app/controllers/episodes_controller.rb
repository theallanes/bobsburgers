class EpisodesController < ApplicationController
  def index
    @episodes = Episode.page(params[:page]).per(20).order("id ASC")
  end

  def show
    @episode = Episode.find(params[:id])
  end
end
