class ResistsController < ApplicationController
  delegate :can?, :cannot?, :to => :ability
  load_and_authorize_resource
  before_action :set_resist, only: [:show, :edit, :update, :destroy]

  def index
    @resist = Resist.all
  end

  def show
  end

  def create
    @resist = Resist.new(resist_params)

    respond_to do |format|
      if @resist.save
        format.html { redirect_to @resist, notice: 'Resist was successfully created.' }
        format.json { render :show, status: :created, location: @resist }
      else
        format.html { render :new }
        format.json { render json: @resist.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @resist.update(resist_params)
        format.html { redirect_to @resist, notice: 'Resist was successfully updated.' }
        format.json { render :show, status: :ok, location: @resist }
      else
        format.html { render :edit }
        format.json { render json: @resist.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @resist.destroy
    respond_to do |format|
      format.html { redirect_to resists_url, notice: 'Resist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resist
      @resist = Resist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resist_params
      params.require(:resist).permit(:percent , :character_id, :resist_template_id, :item_id)
    end
end
