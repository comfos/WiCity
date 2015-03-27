class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  layout 'show', only: [:showall]

  # GET /links
  # GET /links.json
  def index
    @links = Link.all
  end

  # GET /links/1
  # GET /links/1.json
  def show
  end

  def showall
    @links = Link.all
  end

  # GET /links/new
  def new
    #@link1 = Link.new
    #@link2 = Link.new
    @link = Link.new
    @links = Link.all

    #@aLink = []
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  # POST /links.json
  def create
    @link = Link.new(link_params)

    begin
      #respond_to do |format|
        if @link.save
          #format.html { redirect_to @link, notice: 'Link was successfully created.' }
          #format.json { render action: 'show', status: :created, location: @link }
          redirect_to links_url+'/new', notice: "Link was successfully created."
        else
          #format.html { render action: 'new' }
          #format.json { render json: @link.errors, status: :unprocessable_entity }
          redirect_to links_url+'/new', notice: "Error."
        end
      #end
    rescue ActiveRecord::RecordNotUnique
      redirect_to links_url+'/new', notice: "Link was already created."
    end

  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:n1, :n2, :Timeg, :Timew, :Distance, :FlussIn, :FlussOut)
    end
end
