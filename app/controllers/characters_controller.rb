class CharactersController < ApplicationController
  def index
    @characters = Character.includes(:actors).order("name ASC").limit(100)
  end

  def show
    @character = Character.find(params[:id])
  end
end
