class NodosController < ApplicationController
  before_action :set_nodo, only: [:show, :edit, :update, :destroy]

  layout 'show', only: [:showall]

  # GET /nodos
  # GET /nodos.json
  def index
    @nodos = Nodo.all
  end

  def showall
    @nodos = Nodo.all
  end

  # GET /nodos/1
  # GET /nodos/1.json
  def show
  end

  # GET /nodos/new
  def new
    @nodo = Nodo.new
  end

  # GET /nodos/1/edit
  def edit
  end

  # POST /nodos
  # POST /nodos.json
  def create
    @nodo = Nodo.new(nodo_params)

    respond_to do |format|
      if @nodo.save
        #format.html { redirect_to @nodo, notice: 'Nodo was successfully created.' }
        #format.json { render action: 'show', status: :created, location: @nodo }
        format.html { redirect_to nodos_url }
        format.json { head :no_content }
      else
        format.html { render action: 'new' }
        format.json { render json: @nodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nodos/1
  # PATCH/PUT /nodos/1.json
  def update
    respond_to do |format|
      if @nodo.update(nodo_params)
        #format.html { redirect_to @nodo, notice: 'Nodo was successfully updated.' }
        #format.json { head :no_content }
        format.html { redirect_to nodos_url+'?lat=' + @nodo.lat + '&lng=' + @nodo.lng }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nodos/1
  # DELETE /nodos/1.json
  def destroy
    @nodo.destroy
    respond_to do |format|
      format.html { redirect_to nodos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nodo
      @nodo = Nodo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nodo_params
      params.require(:nodo).permit(:lat, :lng)
    end
end
