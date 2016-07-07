class CharacterTemplatesController < ApplicationController
  delegate :can?, :cannot?, :to => :ability
  load_and_authorize_resource
  before_action :set_character_template, only: [:show, :edit, :update, :destroy]

  def index
    @character_templates = CharacterTemplate.all
  end

  def show
  end

  def new
    @character_template = CharacterTemplate.new
    @bag_template = BagTemplate.new
    @item_template = ItemTemplate.new
    @character_template.build_image
    @character_template.build_resist_template
    @character_template.attack_type_templates.build
    @character_template.build_bag_template
    @bag_template.item_templates.build
    @item_template.build_image
    @item_template.build_attack_type_template
    @item_template.build_resist_template
  end

  def edit
  end

  def create
    @character_template = CharacterTemplate.new(character_template_params)

    respond_to do |format|
      if @character_template.save
        format.html { redirect_to @character_template, notice: 'Character template was successfully created.' }
        format.json { render :show, status: :created, location: @character_template }
      else
        format.html { render :new }
        format.json { render json: @character_template.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @character_template.update(character_template_params)
        format.html { redirect_to @character_template, notice: 'Character template was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_template }
      else
        format.html { render :edit }
        format.json { render json: @character_template.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @character_template.destroy
    respond_to do |format|
      format.html { redirect_to character_templates_url, notice: 'Character template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_template
      @character_template = CharacterTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_template_params
      params.require(:character_template).permit(:name, :description, :hp, :strength, :intellect, :agility, :main_param,
                                                  image_attributes:[:image, :character_template_id],
                                                  resist_templates_attributes:[:physical, :fire, :water, :earth, :holy, :necrotic, :nature, :item_template_id, :character_template_id],
                                                  attack_type_templates_attributes:[:name, :attack, :attack_type, :crit_chance, :crit_dmg, :character_template_id, :item_template_id],
                                                  item_templates_attribtes:[:name, :description, :item_type, :strength, :intellect, :agility, :sell_cost, :buy_cost, :purchasable, :bag_template_id, :reward_template_id])
    end
end
