class CavesController < ApplicationController
  before_action :set_cafe, only: [:show, :edit, :update, :destroy]

  # GET /caves
  # GET /caves.json
  def index
    @today = Time.now.strftime("%u")  # => lun = 1, mar = 2, mer = 3
    @t = Time.now

    @caves = Cafe.all
  end

  # GET /caves/1
  # GET /caves/1.json
  def show
  end

  # GET /caves/new
  def new
    @cafe = Cafe.new
  end

  # GET /caves/1/edit
  def edit
  end

  # POST /caves
  # POST /caves.json
  def create
    @cafe = Cafe.new(cafe_params)

    respond_to do |format|
      if @cafe.save
        format.html { redirect_to @cafe, notice: 'Cafe was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cafe }
      else
        format.html { render action: 'new' }
        format.json { render json: @cafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caves/1
  # PATCH/PUT /caves/1.json
  def update
    respond_to do |format|
      if @cafe.update(cafe_params)
        format.html { redirect_to @cafe, notice: 'Cafe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caves/1
  # DELETE /caves/1.json
  def destroy
    @cafe.destroy
    respond_to do |format|
      format.html { redirect_to caves_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cafe
      @cafe = Cafe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cafe_params
      params.require(:cafe).permit(:name, :address, :lat, :lng, :LM, :LP, :MM, :MP, :MEM, :MEP, :GM, :GP, :VM, :VP, :SM, :SP, :DM, :DP)
    end
end
