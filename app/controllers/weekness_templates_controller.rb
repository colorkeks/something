class WeeknessTemplatesController < ApplicationController
  delegate :can?, :cannot?, :to => :ability
  load_and_authorize_resource
  before_action :set_weekness_template, only: [:show, :edit, :update, :destroy]

  # GET /weekness_templates
  # GET /weekness_templates.json
  def index
    @weekness_templates = WeeknessTemplate.all
  end

  # GET /weekness_templates/1
  # GET /weekness_templates/1.json
  def show
  end

  # GET /weekness_templates/new
  def new
    @weekness_template = WeeknessTemplate.new
  end

  # GET /weekness_templates/1/edit
  def edit
  end

  # POST /weekness_templates
  # POST /weekness_templates.json
  def create
    @weekness_template = WeeknessTemplate.new(weekness_template_params)

    respond_to do |format|
      if @weekness_template.save
        format.html { redirect_to @weekness_template, notice: 'Weekness template was successfully created.' }
        format.json { render :show, status: :created, location: @weekness_template }
      else
        format.html { render :new }
        format.json { render json: @weekness_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekness_templates/1
  # PATCH/PUT /weekness_templates/1.json
  def update
    respond_to do |format|
      if @weekness_template.update(weekness_template_params)
        format.html { redirect_to @weekness_template, notice: 'Weekness template was successfully updated.' }
        format.json { render :show, status: :ok, location: @weekness_template }
      else
        format.html { render :edit }
        format.json { render json: @weekness_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekness_templates/1
  # DELETE /weekness_templates/1.json
  def destroy
    @weekness_template.destroy
    respond_to do |format|
      format.html { redirect_to weekness_templates_url, notice: 'Weekness template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekness_template
      @weekness_template = WeeknessTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekness_template_params
      params.require(:weekness_template).permit(:type, :percent)
    end
end
