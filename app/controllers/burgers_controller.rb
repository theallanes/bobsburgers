class BurgersController < ApplicationController
  def index
    @burgers = Burger.page(params[:page]).per(30).order("id ASC")
  end

  def show
    @burger = Burger.includes(:episode).find(params[:id])
  end
end
