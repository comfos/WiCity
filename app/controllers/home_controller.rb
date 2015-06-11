class HomeController < ApplicationController

  def index

  end

  def intloc

  end

  def nearserv
    @pharms = Pharm.all
    @parks = Park.all
    @taxistations = Taxistation.all
    @radiotaxis = Radiotaxi.all
    @fuels = Fuel.all
    @restaurants = Restaurant.all
    @cafe = Cafe.all
  end

  def recnearserv
    @pharms = Pharm.all
    @parks = Park.all
    @taxistations = Taxistation.all
    @radiotaxis = Radiotaxi.all
    @fuels = Fuel.all
    @restaurants = Restaurant.all
    @cafe = Cafe.all
  end

end
