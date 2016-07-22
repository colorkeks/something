class MonstersController < ApplicationController
  delegate :can?, :cannot?, :to => :ability
  load_and_authorize_resource
  before_action :set_monster, only: [:show, :edit, :update, :destroy]


  def index
    @monsters = Monster.all
  end

  def show

  end

  def new
    @monster.attack_type_templates.build
    @monster.build_resist_template
    @monster.build_image
  end

  def edit
  end

  def create
    @monster = Monster.new(monster_params)

    respond_to do |format|
      if @monster.save
        format.html { redirect_to @monster, notice: 'Monster was successfully created.' }
        format.json { render :show, status: :created, location: @monster }
      else
        format.html { render :new }
        format.json { render json: @monster.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @monster.update(monster_params)
        format.html { redirect_to @monster, notice: 'Monster was successfully updated.' }
        format.json { render :show, status: :ok, location: @monster }
      else
        format.html { render :edit }
        format.json { render json: @monster.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @monster.destroy
    respond_to do |format|
      format.html { redirect_to monsters_url, notice: 'Monster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_monster
    @monster = Monster.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def monster_params
    params.require(:monster).permit(:id, :desc, :name,  :hp,
                                               image_attributes:                [:id, :image_content, :type],
                                               resist_template_attributes:      [:id, :physical, :fire, :water, :earth, :holy, :necrotic, :nature],
                                               attack_type_templates_attributes:[:id, :name, :desc, :target, :cost_type, :cost, :attack, :attack_type, :crit_chance, :crit_rate, :_destroy])
  end
end
