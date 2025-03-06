class BurgersController < ApplicationController
  def index
    @burgers = Burger.page(params[:page]).per(20).order("burger_name ASC")
  end

  def show
    @burger = Burger.includes(:episode).find(params[:id])
  end
end
