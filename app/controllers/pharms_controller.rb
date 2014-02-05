class PharmsController < ApplicationController
  before_action :set_pharm, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!, :except => [:show, :index]

  # GET /pharms
  # GET /pharms.json
  def index
    @pharms = Pharm.all
  end

  # GET /pharms/1
  # GET /pharms/1.json
  def show
  end

  # GET /pharms/new
  def new
    @pharm = Pharm.new
  end

  # GET /pharms/1/edit
  def edit
  end

  # POST /pharms
  # POST /pharms.json
  def create
    @pharm = Pharm.new(pharm_params)

    respond_to do |format|
      if @pharm.save
        format.html { redirect_to @pharm, notice: 'Pharm was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pharm }
      else
        format.html { render action: 'new' }
        format.json { render json: @pharm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pharms/1
  # PATCH/PUT /pharms/1.json
  def update
    respond_to do |format|
      if @pharm.update(pharm_params)
        format.html { redirect_to @pharm, notice: 'Pharm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pharm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pharms/1
  # DELETE /pharms/1.json
  def destroy
    @pharm.destroy
    respond_to do |format|
      format.html { redirect_to pharms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharm
      @pharm = Pharm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pharm_params
      params.require(:pharm).permit(:name, :address, :lat, :lng, :coord, :LM, :LP, :MM, :MP, :MEM, :MEP, :GM, :GP, :VM, :VP, :SM, :SP, :DM, :DP, :call)
    end
end
