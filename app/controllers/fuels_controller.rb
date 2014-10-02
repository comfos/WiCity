class FuelsController < ApplicationController
  before_action :set_fuel, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!, :except => [:show, :index]

  # GET /fuels
  # GET /fuels.json
  def index
    @today = Time.now.strftime("%u")  # => lun = 1, mar = 2, mer = 3
    @t = Time.now

    @type = 'all'

    @fuels = Fuel.all
    @taxistations = Taxistation.all
    @radiotaxis = Radiotaxi.all
  end

  # GET /fuels/1
  # GET /fuels/1.json
  def show
  end

  # GET /fuels/new
  def new
    @fuel = Fuel.new
  end

  # GET /fuels/1/edit
  def edit
  end

  # POST /fuels
  # POST /fuels.json
  def create
    @fuel = Fuel.new(fuel_params)

    respond_to do |format|
      if @fuel.save
        format.html { redirect_to @fuel, notice: 'Fuel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fuel }
      else
        format.html { render action: 'new' }
        format.json { render json: @fuel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fuels/1
  # PATCH/PUT /fuels/1.json
  def update
    respond_to do |format|
      if @fuel.update(fuel_params)
        format.html { redirect_to @fuel, notice: 'Fuel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fuel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fuels/1
  # DELETE /fuels/1.json
  def destroy
    @fuel.destroy
    respond_to do |format|
      format.html { redirect_to fuels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuel
      @fuel = Fuel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fuel_params
      params.require(:fuel).permit(:name, :address, :lat, :lng, :coord, :LM, :LP, :MM, :MP, :MEM, :MEP, :GM, :GP, :VM, :VP, :SM, :SP, :DM, :DP, :phone)
    end
end
