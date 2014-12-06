class FirstAidsController < ApplicationController
  before_action :set_first_aid, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!, :except => [:show, :index]

  # GET /first_aids
  # GET /first_aids.json
  def index
    @today = Time.now.strftime("%u")  # => lun = 1, mar = 2, mer = 3
    @t = Time.now

    @first_aids = FirstAid.all
  end

  # GET /first_aids/1
  # GET /first_aids/1.json
  def show
  end

  # GET /first_aids/new
  def new
    @first_aid = FirstAid.new
  end

  # GET /first_aids/1/edit
  def edit
  end

  # POST /first_aids
  # POST /first_aids.json
  def create
    @first_aid = FirstAid.new(first_aid_params)

    respond_to do |format|
      if @first_aid.save
        format.html { redirect_to @first_aid, notice: 'first aid was successfully created.' }
        format.json { render action: 'show', status: :created, location: @first_aid }
      else
        format.html { render action: 'new' }
        format.json { render json: @first_aid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /first_aids/1
  # PATCH/PUT /first_aids/1.json
  def update
    respond_to do |format|
      if @first_aid.update(first_aid_params)
        format.html { redirect_to @first_aid, notice: 'first aid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @first_aid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_aids/1
  # DELETE /first_aids/1.json
  def destroy
    @first_aid.destroy
    respond_to do |format|
      format.html { redirect_to first_aids_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_aid
      @first_aid = FirstAid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_aid_params
      params.require(:first_aid).permit(:name, :address, :lat, :lng, :LM, :LP, :MM, :MP, :MEM, :MEP, :GM, :GP, :VM, :VP, :SM, :SP, :DM, :DP)
    end
end
