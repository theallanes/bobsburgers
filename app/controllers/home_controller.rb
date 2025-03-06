class HomeController < ApplicationController
  def index
    @episodes = Episode.order("id ASC").limit(20)

    @characters = Character.limit(8)

    @stores = Store.limit(8)

    @burgers = Burger.limit(8)
  end
end
