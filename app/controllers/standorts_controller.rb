class StandortsController < ApplicationController
  before_action :set_standort, only: [:show, :edit, :update, :destroy]

  # GET /standorts
  # GET /standorts.json
  def index
    @standorts = Standort.all
  end

  # GET /standorts/1
  # GET /standorts/1.json
  def show
  end

  # GET /standorts/new
  def new
    @standort = Standort.new
  end

  # GET /standorts/1/edit
  def edit
  end

  # POST /standorts
  # POST /standorts.json
  def create
    @standort = Standort.new(standort_params)

    respond_to do |format|
      if @standort.save
        format.html { redirect_to @standort, notice: 'Standort was successfully created.' }
        format.json { render :show, status: :created, location: @standort }
      else
        format.html { render :new }
        format.json { render json: @standort.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /standorts/1
  # PATCH/PUT /standorts/1.json
  def update
    respond_to do |format|
      if @standort.update(standort_params)
        format.html { redirect_to @standort, notice: 'Standort was successfully updated.' }
        format.json { render :show, status: :ok, location: @standort }
      else
        format.html { render :edit }
        format.json { render json: @standort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standorts/1
  # DELETE /standorts/1.json
  def destroy
    @standort.destroy
    respond_to do |format|
      format.html { redirect_to standorts_url, notice: 'Standort was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_standort
      @standort = Standort.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def standort_params
      params.require(:standort).permit(:Adresse, :Oeffnungszeiten)
    end
end
