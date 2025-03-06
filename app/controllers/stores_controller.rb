class StoresController < ApplicationController
  def index
    @stores = Store.page(params[:page]).per(16).order("id ASC")
  end

  def show
    @store = Store.includes(:episode).find(params[:id])
  end
end
