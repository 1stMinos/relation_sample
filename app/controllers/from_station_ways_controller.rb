class FromStationWaysController < ApplicationController
  before_action :set_from_station_way, only: [:show, :edit, :update, :destroy]

  # GET /from_station_ways
  # GET /from_station_ways.json
  def index
    @from_station_ways = FromStationWay.all
  end

  # GET /from_station_ways/1
  # GET /from_station_ways/1.json
  def show
  end

  # GET /from_station_ways/new
  def new
    @from_station_way = FromStationWay.new
  end

  # GET /from_station_ways/1/edit
  def edit
  end

  # POST /from_station_ways
  # POST /from_station_ways.json
  def create
    @from_station_way = FromStationWay.new(from_station_way_params)

    respond_to do |format|
      if @from_station_way.save
        format.html { redirect_to @from_station_way, notice: 'From station way was successfully created.' }
        format.json { render :show, status: :created, location: @from_station_way }
      else
        format.html { render :new }
        format.json { render json: @from_station_way.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /from_station_ways/1
  # PATCH/PUT /from_station_ways/1.json
  def update
    respond_to do |format|
      if @from_station_way.update(from_station_way_params)
        format.html { redirect_to @from_station_way, notice: 'From station way was successfully updated.' }
        format.json { render :show, status: :ok, location: @from_station_way }
      else
        format.html { render :edit }
        format.json { render json: @from_station_way.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /from_station_ways/1
  # DELETE /from_station_ways/1.json
  def destroy
    @from_station_way.destroy
    respond_to do |format|
      format.html { redirect_to from_station_ways_url, notice: 'From station way was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_from_station_way
      @from_station_way = FromStationWay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def from_station_way_params
      params.require(:from_station_way).permit(:name)
    end
end
