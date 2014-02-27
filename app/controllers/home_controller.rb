class HomeController < ApplicationController

  def index

  end

  def intloc

  end

  def nearserv
    @pharms = Pharm.all
    @parks = Park.all
    @taxistations = Taxistation.all
  end

end
