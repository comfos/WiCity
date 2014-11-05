class HomeController < ApplicationController

  def index

  end

  def intloc

  end

  def nearserv
    @pharms = Pharm.all
    @parks = Park.all
    @taxistations = Taxistation.all
    @restaurants = Restaurant.all
  end

end
