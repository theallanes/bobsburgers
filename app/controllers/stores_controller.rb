class StoresController < ApplicationController
  def index
    @stores = Store.order("id ASC").limit(50)
  end

  def show
    @store = Store.find(params[:id])
  end
end
