class CuttersController < ApplicationController
  before_action :set_cutter, only: [:show, :edit, :update, :destroy]

  # GET /cutters
  # GET /cutters.json
  def index
    @cutters = Cutter.all
  end

  # GET /cutters/1
  # GET /cutters/1.json
  def show
  end

  # GET /cutters/new
  def new
    @cutter = Cutter.new
  end

  # GET /cutters/1/edit
  def edit
  end

  # POST /cutters
  # POST /cutters.json
  def create
    @cutter = Cutter.new(cutter_params)

    respond_to do |format|
      if @cutter.save
        format.html { redirect_to @cutter, notice: 'Cutter was successfully created.' }
        format.json { render :show, status: :created, location: @cutter }
      else
        format.html { render :new }
        format.json { render json: @cutter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cutters/1
  # PATCH/PUT /cutters/1.json
  def update
    respond_to do |format|
      if @cutter.update(cutter_params)
        format.html { redirect_to @cutter, notice: 'Cutter was successfully updated.' }
        format.json { render :show, status: :ok, location: @cutter }
      else
        format.html { render :edit }
        format.json { render json: @cutter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cutters/1
  # DELETE /cutters/1.json
  def destroy
    @cutter.destroy
    respond_to do |format|
      format.html { redirect_to cutters_url, notice: 'Cutter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cutter
      @cutter = Cutter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cutter_params
      params.require(:cutter).permit(:name, :description)
    end
end
