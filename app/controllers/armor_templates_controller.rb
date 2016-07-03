class ArmorTemplatesController < ApplicationController
  delegate :can?, :cannot?, :to => :ability
  load_and_authorize_resource
  before_action :set_armor_template, only: [:show, :edit, :update, :destroy]

  # GET /armor_templates
  # GET /armor_templates.json
  def index
    @armor_templates = ArmorTemplate.all
  end

  # GET /armor_templates/1
  # GET /armor_templates/1.json
  def show
  end

  # GET /armor_templates/new
  def new
    @armor_template = ArmorTemplate.new
  end

  # GET /armor_templates/1/edit
  def edit
  end

  # POST /armor_templates
  # POST /armor_templates.json
  def create
    @armor_template = ArmorTemplate.new(armor_template_params)

    respond_to do |format|
      if @armor_template.save
        format.html { redirect_to @armor_template, notice: 'Armor template was successfully created.' }
        format.json { render :show, status: :created, location: @armor_template }
      else
        format.html { render :new }
        format.json { render json: @armor_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /armor_templates/1
  # PATCH/PUT /armor_templates/1.json
  def update
    respond_to do |format|
      if @armor_template.update(armor_template_params)
        format.html { redirect_to @armor_template, notice: 'Armor template was successfully updated.' }
        format.json { render :show, status: :ok, location: @armor_template }
      else
        format.html { render :edit }
        format.json { render json: @armor_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /armor_templates/1
  # DELETE /armor_templates/1.json
  def destroy
    @armor_template.destroy
    respond_to do |format|
      format.html { redirect_to armor_templates_url, notice: 'Armor template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_armor_template
      @armor_template = ArmorTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def armor_template_params
      params.require(:armor_template).permit(:type, :percent)
    end
end
