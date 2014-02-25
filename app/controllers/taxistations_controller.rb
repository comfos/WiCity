class TaxistationsController < ApplicationController
  before_action :set_taxistation, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!, :except => [:show, :index]

  # GET /taxistations
  # GET /taxistations.json
  def index
    @today = Time.now.strftime("%u")  # => lun = 1, mar = 2, mer = 3
    @t = Time.now

    @taxistations = Taxistation.all
  end

  # GET /taxistations/1
  # GET /taxistations/1.json
  def show
  end

  # GET /taxistations/new
  def new
    @taxistation = Taxistation.new
  end

  # GET /taxistations/1/edit
  def edit
  end

  # POST /taxistations
  # POST /taxistations.json
  def create
    @taxistation = Taxistation.new(taxistation_params)

    respond_to do |format|
      if @taxistation.save
        format.html { redirect_to @taxistation, notice: 'Taxistation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @taxistation }
      else
        format.html { render action: 'new' }
        format.json { render json: @taxistation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taxistations/1
  # PATCH/PUT /taxistations/1.json
  def update
    respond_to do |format|
      if @taxistation.update(taxistation_params)
        format.html { redirect_to @taxistation, notice: 'Taxistation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @taxistation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxistations/1
  # DELETE /taxistations/1.json
  def destroy
    @taxistation.destroy
    respond_to do |format|
      format.html { redirect_to taxistations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taxistation
      @taxistation = Taxistation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taxistation_params
      params.require(:taxistation).permit(:name, :address, :lat, :lng, :coord)
    end
end
