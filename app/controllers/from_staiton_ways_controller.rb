class FromStaitonWaysController < ApplicationController
  before_action :set_from_staiton_way, only: [:show, :edit, :update, :destroy]

  # GET /from_staiton_ways
  # GET /from_staiton_ways.json
  def index
    @from_staiton_ways = FromStaitonWay.all
  end

  # GET /from_staiton_ways/1
  # GET /from_staiton_ways/1.json
  def show
  end

  # GET /from_staiton_ways/new
  def new
    @from_staiton_way = FromStaitonWay.new
  end

  # GET /from_staiton_ways/1/edit
  def edit
  end

  # POST /from_staiton_ways
  # POST /from_staiton_ways.json
  def create
    @from_staiton_way = FromStaitonWay.new(from_staiton_way_params)

    respond_to do |format|
      if @from_staiton_way.save
        format.html { redirect_to @from_staiton_way, notice: 'From staiton way was successfully created.' }
        format.json { render :show, status: :created, location: @from_staiton_way }
      else
        format.html { render :new }
        format.json { render json: @from_staiton_way.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /from_staiton_ways/1
  # PATCH/PUT /from_staiton_ways/1.json
  def update
    respond_to do |format|
      if @from_staiton_way.update(from_staiton_way_params)
        format.html { redirect_to @from_staiton_way, notice: 'From staiton way was successfully updated.' }
        format.json { render :show, status: :ok, location: @from_staiton_way }
      else
        format.html { render :edit }
        format.json { render json: @from_staiton_way.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /from_staiton_ways/1
  # DELETE /from_staiton_ways/1.json
  def destroy
    @from_staiton_way.destroy
    respond_to do |format|
      format.html { redirect_to from_staiton_ways_url, notice: 'From staiton way was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_from_staiton_way
      @from_staiton_way = FromStaitonWay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def from_staiton_way_params
      params.require(:from_staiton_way).permit(:name)
    end
end
