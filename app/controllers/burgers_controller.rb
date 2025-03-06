class BurgersController < ApplicationController
  def index
    @burgers = Burger.order("id ASC").limit(100)
  end

  def show
    @burger = Burger.find(params[:id])
  end
end
