class CharactersController < ApplicationController
  def index
    @characters = Character.page(params[:page]).per(30).search(params[:search])
  end

  def show
    @character = Character.includes(:episodes, :actor).find(params[:id])
  end
end
