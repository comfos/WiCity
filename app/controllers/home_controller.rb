class HomeController < ApplicationController

  def index

  end

  def intloc

  end

  def nearserv
    @pharms = Pharm.all + Pharm.all
  end

end
