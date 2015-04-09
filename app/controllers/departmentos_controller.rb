class DepartmentosController < ApplicationController
  before_action :set_departmento, only: [:show, :edit, :update, :destroy]

  # GET /departmentos
  # GET /departmentos.json
  def index
    @departmentos = Departmento.all
  end

  # GET /departmentos/1
  # GET /departmentos/1.json
  def show
  end

  # GET /departmentos/new
  def new
    @departmento = Departmento.new
  end

  # GET /departmentos/1/edit
  def edit
  end

  # POST /departmentos
  # POST /departmentos.json
  def create
    @departmento = Departmento.new(departmento_params)

    respond_to do |format|
      if @departmento.save
        format.html { redirect_to @departmento, notice: 'Departmento was successfully created.' }
        format.json { render :show, status: :created, location: @departmento }
      else
        format.html { render :new }
        format.json { render json: @departmento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departmentos/1
  # PATCH/PUT /departmentos/1.json
  def update
    respond_to do |format|
      if @departmento.update(departmento_params)
        format.html { redirect_to @departmento, notice: 'Departmento was successfully updated.' }
        format.json { render :show, status: :ok, location: @departmento }
      else
        format.html { render :edit }
        format.json { render json: @departmento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departmentos/1
  # DELETE /departmentos/1.json
  def destroy
    @departmento.destroy
    respond_to do |format|
      format.html { redirect_to departmentos_url, notice: 'Departmento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departmento
      @departmento = Departmento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def departmento_params
      params.require(:departmento).permit(:codigo_departamento, :nombre_departamento)
    end
end
