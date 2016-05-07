class FromStationsController < ApplicationController
  before_action :set_from_station, only: [:show, :edit, :update, :destroy]

  # GET /from_stations
  # GET /from_stations.json
  def index
    @from_stations = FromStation.all
  end

  # GET /from_stations/1
  # GET /from_stations/1.json
  def show
  end

  # GET /from_stations/new
  def new
    @from_station = FromStation.new
  end

  # GET /from_stations/1/edit
  def edit
  end

  # POST /from_stations
  # POST /from_stations.json
  def create
    @from_station = FromStation.new(from_station_params)

    respond_to do |format|
      if @from_station.save
        format.html { redirect_to @from_station, notice: 'From station was successfully created.' }
        format.json { render :show, status: :created, location: @from_station }
      else
        format.html { render :new }
        format.json { render json: @from_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /from_stations/1
  # PATCH/PUT /from_stations/1.json
  def update
    respond_to do |format|
      if @from_station.update(from_station_params)
        format.html { redirect_to @from_station, notice: 'From station was successfully updated.' }
        format.json { render :show, status: :ok, location: @from_station }
      else
        format.html { render :edit }
        format.json { render json: @from_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /from_stations/1
  # DELETE /from_stations/1.json
  def destroy
    @from_station.destroy
    respond_to do |format|
      format.html { redirect_to from_stations_url, notice: 'From station was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_from_station
      @from_station = FromStation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def from_station_params
      params.require(:from_station).permit(:office_id, :from_station_way_id, :minutes, :comment)
    end
end
