class CharactersController < ApplicationController
  def index
    @characters = Character.order("name DESC")
  end

  def show
    @character = Character.find(params[:id])
  end
end
