class QuestTemplatesController < ApplicationController
  delegate :can?, :cannot?, :to => :ability
  load_and_authorize_resource
  before_action :set_quest_template, only: [:show, :edit, :update, :destroy]


  def index
    @quest_templates = QuestTemplate.all
  end

  def show

  end

  def new
  end

  def edit
  end

  def create
    @quest_template = QuestTemplate.new(quest_template_params)

    respond_to do |format|
      if  @quest_template.save
        format.html { redirect_to  @quest_template, notice: 'QuestTemplate was successfully created.' }
        format.json { render :show, status: :created, location:  @quest_template }
      else
        format.html { render :new }
        format.json { render json:  @quest_template.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @quest_template.update(quest_template_params)
        format.html { redirect_to   @quest_template, notice: 'QuestTemplate was successfully updated.' }
        format.json { render :show, status: :ok, location:  @quest_template }
      else
        format.html { render :edit }
        format.json { render json:  @quest_template.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @quest_template.destroy
    respond_to do |format|
      format.html { redirect_to quest_templates_url, notice: 'QuestTemplate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_quest_template
    @quest_template = QuestTemplate.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def quest_template_params
    params.require(:quest_template).permit(:id, :name, :desc, :next_id,
                                          monsters_attributes:[ :id, :desc, :name,  :hp,
                                                                 image_attributes:                [:id, :image_content],
                                                                 resist_template_attributes:      [:id, :physical, :fire, :water, :earth, :holy, :necrotic, :nature],
                                                                 attack_type_templates_attributes:[:id, :name, :desc, :target, :cost_type, :cost, :attack, :attack_type, :crit_chance, :crit_rate, :_destroy],
                                          reward_template_attributes:[:id, :exp, :gold,
                                                                      item_templates_attributes: [:id, :name, :description, :item_type, :strength, :intellect, :agility, :sell_cost, :buy_cost, :purchasable,:_destroy,
                                                                                                  image_attributes:                [:id, :image_content],
                                                                                                  resist_template_attributes:      [:id, :physical, :fire, :water, :earth, :holy, :necrotic, :nature],
                                                                                                  attack_type_template_attributes: [:id, :name, :desc, :target, :cost_type, :cost,  :attack, :attack_type, :crit_chance, :crit_rate, :_destroy]]]])
  end
end
