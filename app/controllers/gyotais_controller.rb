class GyotaisController < ApplicationController
  before_action :set_gyotai, only: [:show, :edit, :update, :destroy]

  # GET /gyotais
  # GET /gyotais.json
  def index
    @gyotais = Gyotai.all
  end

  # GET /gyotais/1
  # GET /gyotais/1.json
  def show
  end

  # GET /gyotais/new
  def new
    @gyotai = Gyotai.new
  end

  # GET /gyotais/1/edit
  def edit
  end

  # POST /gyotais
  # POST /gyotais.json
  def create
    @gyotai = Gyotai.new(gyotai_params)

    respond_to do |format|
      if @gyotai.save
        format.html { redirect_to @gyotai, notice: 'Gyotai was successfully created.' }
        format.json { render :show, status: :created, location: @gyotai }
      else
        format.html { render :new }
        format.json { render json: @gyotai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gyotais/1
  # PATCH/PUT /gyotais/1.json
  def update
    respond_to do |format|
      if @gyotai.update(gyotai_params)
        format.html { redirect_to @gyotai, notice: 'Gyotai was successfully updated.' }
        format.json { render :show, status: :ok, location: @gyotai }
      else
        format.html { render :edit }
        format.json { render json: @gyotai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gyotais/1
  # DELETE /gyotais/1.json
  def destroy
    @gyotai.destroy
    respond_to do |format|
      format.html { redirect_to gyotais_url, notice: 'Gyotai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gyotai
      @gyotai = Gyotai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gyotai_params
      params.require(:gyotai).permit(:name, :parent_id, :parent_name, :comment)
    end
end
