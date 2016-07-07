class AttackTypeTemplatesController < ApplicationController
  before_action :set_attack_type_template, only: [:show, :edit, :update, :destroy]

  # GET /attack_type_templates
  # GET /attack_type_templates.json
  def index
    @attack_type_templates = AttackTypeTemplate.all
  end

  # GET /attack_type_templates/1
  # GET /attack_type_templates/1.json
  def show
  end

  # GET /attack_type_templates/new
  def new
    @attack_type_template = AttackTypeTemplate.new
  end

  # GET /attack_type_templates/1/edit
  def edit
  end

  # POST /attack_type_templates
  # POST /attack_type_templates.json
  def create
    @attack_type_template = AttackTypeTemplate.new(attack_type_template_params)

    respond_to do |format|
      if @attack_type_template.save
        format.html { redirect_to @attack_type_template, notice: 'Attack type template was successfully created.' }
        format.json { render :show, status: :created, location: @attack_type_template }
      else
        format.html { render :new }
        format.json { render json: @attack_type_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attack_type_templates/1
  # PATCH/PUT /attack_type_templates/1.json
  def update
    respond_to do |format|
      if @attack_type_template.update(attack_type_template_params)
        format.html { redirect_to @attack_type_template, notice: 'Attack type template was successfully updated.' }
        format.json { render :show, status: :ok, location: @attack_type_template }
      else
        format.html { render :edit }
        format.json { render json: @attack_type_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attack_type_templates/1
  # DELETE /attack_type_templates/1.json
  def destroy
    @attack_type_template.destroy
    respond_to do |format|
      format.html { redirect_to attack_type_templates_url, notice: 'Attack type template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attack_type_template
      @attack_type_template = AttackTypeTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attack_type_template_params
      params.require(:attack_type_template).permit(:name, :attack, :attack_type, :crit_chance, :crit_dmg, :character_template_id, :item_template_id, :monster_id)
    end
end
