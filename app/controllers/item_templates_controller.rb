class ItemTemplatesController < ApplicationController
  delegate :can?, :cannot?, :to => :ability
  load_and_authorize_resource
  before_action :set_item_template, only: [:show, :edit, :update, :destroy]

  # GET /item_templates
  # GET /item_templates.json
  def index
    @item_templates = ItemTemplate.all
  end

  # GET /item_templates/1
  # GET /item_templates/1.json
  def show
  end

  # GET /item_templates/new
  def new
    @item_template = ItemTemplate.new
  end

  # GET /item_templates/1/edit
  def edit
  end

  # POST /item_templates
  # POST /item_templates.json
  def create
    @item_template = ItemTemplate.new(item_template_params)

    respond_to do |format|
      if @item_template.save
        format.html { redirect_to @item_template, notice: 'Item template was successfully created.' }
        format.json { render :show, status: :created, location: @item_template }
      else
        format.html { render :new }
        format.json { render json: @item_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_templates/1
  # PATCH/PUT /item_templates/1.json
  def update
    respond_to do |format|
      if @item_template.update(item_template_params)
        format.html { redirect_to @item_template, notice: 'Item template was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_template }
      else
        format.html { render :edit }
        format.json { render json: @item_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_templates/1
  # DELETE /item_templates/1.json
  def destroy
    @item_template.destroy
    respond_to do |format|
      format.html { redirect_to item_templates_url, notice: 'Item template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_template
      @item_template = ItemTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_template_params
      params.require(:item_template).permit(:name, :description, :item_type, :strength, :intellect, :agility, :sell_cost,:buy_cost,:purchasable, :bag_template_id, :reward_template_id,
                                            image_attributes:[:image_content, :item_template_id],
                                            resist_templates_attributes:[:physical, :fire, :water, :earth, :holy, :necrotic, :nature, :item_template_id],
                                            attack_type_template_attributes:[:name, :attack, :attack_type, :crit_chance, :crit_dmg, :item_template_id])
    end
end
