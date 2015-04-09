class BarrioColoniaController < ApplicationController
  before_action :set_barrio_colonium, only: [:show, :edit, :update, :destroy]

  # GET /barrio_colonia
  # GET /barrio_colonia.json
  def index
    @barrio_colonia = BarrioColonium.all
  end

  # GET /barrio_colonia/1
  # GET /barrio_colonia/1.json
  def show
  end

  # GET /barrio_colonia/new
  def new
    @barrio_colonium = BarrioColonium.new
  end

  # GET /barrio_colonia/1/edit
  def edit
  end

  # POST /barrio_colonia
  # POST /barrio_colonia.json
  def create
    @barrio_colonium = BarrioColonium.new(barrio_colonium_params)

    respond_to do |format|
      if @barrio_colonium.save
        format.html { redirect_to @barrio_colonium, notice: 'Barrio colonium was successfully created.' }
        format.json { render :show, status: :created, location: @barrio_colonium }
      else
        format.html { render :new }
        format.json { render json: @barrio_colonium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barrio_colonia/1
  # PATCH/PUT /barrio_colonia/1.json
  def update
    respond_to do |format|
      if @barrio_colonium.update(barrio_colonium_params)
        format.html { redirect_to @barrio_colonium, notice: 'Barrio colonium was successfully updated.' }
        format.json { render :show, status: :ok, location: @barrio_colonium }
      else
        format.html { render :edit }
        format.json { render json: @barrio_colonium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barrio_colonia/1
  # DELETE /barrio_colonia/1.json
  def destroy
    @barrio_colonium.destroy
    respond_to do |format|
      format.html { redirect_to barrio_colonia_url, notice: 'Barrio colonium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barrio_colonium
      @barrio_colonium = BarrioColonium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barrio_colonium_params
      params.require(:barrio_colonium).permit(:nombre_colonia, :tipo, :municipio_id)
    end
end
