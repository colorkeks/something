class AttackTypesController < ApplicationController
  delegate :can?, :cannot?, :to => :ability
  load_and_authorize_resource
  before_action :set_attack_type, only: [:show, :edit, :update, :destroy]

  # GET /attack_types
  # GET /attack_types.json
  def index
    @attack_types = AttackType.all
  end

  # GET /attack_types/1
  # GET /attack_types/1.json
  def show
  end

  # POST /attack_types
  # POST /attack_types.json
  def create
    @attack_type = AttackType.new(attack_type_params)

    respond_to do |format|
      if @attack_type.save
        format.html { redirect_to @attack_type, notice: 'Attack type was successfully created.' }
        format.json { render :show, status: :created, location: @attack_type }
      else
        format.html { render :new }
        format.json { render json: @attack_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attack_types/1
  # PATCH/PUT /attack_types/1.json
  def update
    respond_to do |format|
      if @attack_type.update(attack_type_params)
        format.html { redirect_to @attack_type, notice: 'Attack type was successfully updated.' }
        format.json { render :show, status: :ok, location: @attack_type }
      else
        format.html { render :edit }
        format.json { render json: @attack_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attack_types/1
  # DELETE /attack_types/1.json
  def destroy
    @attack_type.destroy
    respond_to do |format|
      format.html { redirect_to attack_types_url, notice: 'Attack type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attack_type
      @attack_type = AttackType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attack_type_params
      params.require(:attack_type).permit(:name, :description, :attack, :attack_type)
    end
end
