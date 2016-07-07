class ResistTemplatesController < ApplicationController
  before_action :set_resist_template, only: [:show, :edit, :update, :destroy]

  # GET /resist_templates
  # GET /resist_templates.json
  def index
    @resist_templates = ResistTemplate.all
  end

  # GET /resist_templates/1
  # GET /resist_templates/1.json
  def show
  end

  # GET /resist_templates/new
  def new
    @resist_template = ResistTemplate.new
  end

  # GET /resist_templates/1/edit
  def edit
  end

  # POST /resist_templates
  # POST /resist_templates.json
  def create
    @resist_template = ResistTemplate.new(resist_template_params)

    respond_to do |format|
      if @resist_template.save
        format.html { redirect_to @resist_template, notice: 'Resist template was successfully created.' }
        format.json { render :show, status: :created, location: @resist_template }
      else
        format.html { render :new }
        format.json { render json: @resist_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resist_templates/1
  # PATCH/PUT /resist_templates/1.json
  def update
    respond_to do |format|
      if @resist_template.update(resist_template_params)
        format.html { redirect_to @resist_template, notice: 'Resist template was successfully updated.' }
        format.json { render :show, status: :ok, location: @resist_template }
      else
        format.html { render :edit }
        format.json { render json: @resist_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resist_templates/1
  # DELETE /resist_templates/1.json
  def destroy
    @resist_template.destroy
    respond_to do |format|
      format.html { redirect_to resist_templates_url, notice: 'Resist template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resist_template
      @resist_template = ResistTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resist_template_params
      params.require(:resist_template).permit(:physical, :fire, :water, :earth, :holy, :necrotic, :nature, :item_template_id, :character_template_id, :monster_id)
    end
end
