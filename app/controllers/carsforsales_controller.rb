class CarsforsalesController < ApplicationController
  before_action :set_carsforsale, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  # GET /carsforsales
  # GET /carsforsales.json
  def index
    @carsforsales = Carsforsale.search(params[:search])
  end

  # GET /carsforsales/1
  # GET /carsforsales/1.json
  def show
    @favourite_exists = Favourite.where(carsforsale: @carsforsale, user: current_user ) == [] ? false :true
  end

  # GET /carsforsales/new
  def new
    @carsforsale = Carsforsale.new
  end

  # GET /carsforsales/1/edit
  def edit
  end

  # POST /carsforsales
  # POST /carsforsales.json
  def create
    @carsforsale = Carsforsale.new(carsforsale_params)

    respond_to do |format|
      if @carsforsale.save
        format.html { redirect_to @carsforsale, notice: 'Carsforsale was successfully created.' }
        format.json { render :show, status: :created, location: @carsforsale }
      else
        format.html { render :new }
        format.json { render json: @carsforsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carsforsales/1
  # PATCH/PUT /carsforsales/1.json
  def update
    respond_to do |format|
      if @carsforsale.update(carsforsale_params)
        format.html { redirect_to @carsforsale, notice: 'Carsforsale was successfully updated.' }
        format.json { render :show, status: :ok, location: @carsforsale }
      else
        format.html { render :edit }
        format.json { render json: @carsforsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carsforsales/1
  # DELETE /carsforsales/1.json
  def destroy
    @carsforsale.destroy
    respond_to do |format|
      format.html { redirect_to carsforsales_url, notice: 'Carsforsale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carsforsale
      @carsforsale = Carsforsale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carsforsale_params
      params.require(:carsforsale).permit(:title, :brand, :year, :engine, :transmission, :mileage, :color, :description, :price)
    end
end
