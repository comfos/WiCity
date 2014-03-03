class RadiotaxisController < ApplicationController
  before_action :set_radiotaxi, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!, :except => [:show, :index]

  # GET /radiotaxis
  # GET /radiotaxis.json
  def index
    @today = Time.now.strftime("%u")  # => lun = 1, mar = 2, mer = 3
    @t = Time.now

    @radiotaxis = Radiotaxi.all
  end

  # GET /radiotaxis/1
  # GET /radiotaxis/1.json
  def show
  end

  # GET /radiotaxis/new
  def new
    @radiotaxi = Radiotaxi.new
  end

  # GET /radiotaxis/1/edit
  def edit
  end

  # POST /radiotaxis
  # POST /radiotaxis.json
  def create
    @radiotaxi = Radiotaxi.new(radiotaxi_params)

    respond_to do |format|
      if @radiotaxi.save
        format.html { redirect_to @radiotaxi, notice: 'Radiotaxi was successfully created.' }
        format.json { render action: 'show', status: :created, location: @radiotaxi }
      else
        format.html { render action: 'new' }
        format.json { render json: @radiotaxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /radiotaxis/1
  # PATCH/PUT /radiotaxis/1.json
  def update
    respond_to do |format|
      if @radiotaxi.update(radiotaxi_params)
        format.html { redirect_to @radiotaxi, notice: 'Radiotaxi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @radiotaxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radiotaxis/1
  # DELETE /radiotaxis/1.json
  def destroy
    @radiotaxi.destroy
    respond_to do |format|
      format.html { redirect_to radiotaxis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_radiotaxi
      @radiotaxi = Radiotaxi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def radiotaxi_params
      params.require(:radiotaxi).permit(:name, :address, :lat, :lng, :coord, :phone)
    end
end
