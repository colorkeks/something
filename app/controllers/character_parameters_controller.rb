class CharacterParametersController < ApplicationController
  before_action :set_character_parameter, only: [:show, :edit, :update, :destroy]

  def index
    @character_parameters = CharacterParameter.all
  end

  def show
  end

  def create
    @character_parameter = CharacterParameter.new(character_parameter_params)

    respond_to do |format|
      if @character_parameter.save
        format.html { redirect_to @character_parameter, notice: 'Character parameter was successfully created.' }
        format.json { render :show, status: :created, location: @character_parameter }
      else
        format.html { render :new }
        format.json { render json: @character_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @character_parameter.update(character_parameter_params)
        format.html { redirect_to @character_parameter, notice: 'Character parameter was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_parameter }
      else
        format.html { render :edit }
        format.json { render json: @character_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @character_parameter.destroy
    respond_to do |format|
      format.html { redirect_to character_parameters_url, notice: 'Character parameter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_parameter
      @character_parameter = CharacterParameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_parameter_params
      params.require(:character_parameter).permit(:level, :experience, :hp, :strength, :intellect, :agility)
    end
end
