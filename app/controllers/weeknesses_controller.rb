class WeeknessesController < ApplicationController
  delegate :can?, :cannot?, :to => :ability
  load_and_authorize_resource
  before_action :set_weekness, only: [:show, :edit, :update, :destroy]

  # GET /weeknesses
  # GET /weeknesses.json
  def index
    @weeknesses = Weekness.all
  end

  # GET /weeknesses/1
  # GET /weeknesses/1.json
  def show
  end

  # POST /weeknesses
  # POST /weeknesses.json
  def create
    @weekness = Weekness.new(weekness_params)

    respond_to do |format|
      if @weekness.save
        format.html { redirect_to @weekness, notice: 'Weekness was successfully created.' }
        format.json { render :show, status: :created, location: @weekness }
      else
        format.html { render :new }
        format.json { render json: @weekness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weeknesses/1
  # PATCH/PUT /weeknesses/1.json
  def update
    respond_to do |format|
      if @weekness.update(weekness_params)
        format.html { redirect_to @weekness, notice: 'Weekness was successfully updated.' }
        format.json { render :show, status: :ok, location: @weekness }
      else
        format.html { render :edit }
        format.json { render json: @weekness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weeknesses/1
  # DELETE /weeknesses/1.json
  def destroy
    @weekness.destroy
    respond_to do |format|
      format.html { redirect_to weeknesses_url, notice: 'Weekness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekness
      @weekness = Weekness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekness_params
      params.require(:weekness).permit(:type, :percent)
    end
end
