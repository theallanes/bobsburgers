class CharactersController < ApplicationController
  def index
    @characters = Character.order("name DESC").limit(10)
  end

  def show
    @character = Character.find(params[:id])
  end
end
