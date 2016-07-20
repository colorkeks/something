class RewardTemplatesController < ApplicationController
  delegate :can?, :cannot?, :to => :ability
  load_and_authorize_resource
  before_action :set_reward_template, only: [:show, :edit, :update, :destroy]


  def index
    @monsters = RewardTemplate.all
  end

  def show

  end

  def new
  end

  def edit
  end

  def create
    @reward = RewardTemplate.new(reward_template_params)

    respond_to do |format|
      if  @reward.save
        format.html { redirect_to  @reward, notice: 'RewardTemplate was successfully created.' }
        format.json { render :show, status: :created, location:  @reward }
      else
        format.html { render :new }
        format.json { render json:  @reward.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @reward.update(reward_template_params)
        format.html { redirect_to   @reward, notice: 'RewardTemplate was successfully updated.' }
        format.json { render :show, status: :ok, location:  @reward }
      else
        format.html { render :edit }
        format.json { render json:  @reward.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reward.destroy
    respond_to do |format|
      format.html { redirect_to reward_templates_url, notice: 'RewardTemplate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_reward_template
    @reward = RewardTemplate.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def reward_template_params
    params.require(:reward_template).permit(:id, :exp, :gold,
                                    item_templates_attributes: [:id, :name, :description, :item_type, :strength, :intellect, :agility, :sell_cost, :buy_cost, :purchasable,:_destroy,
                                                                image_attributes:                [:id, :image_content],
                                                                resist_template_attributes:      [:id, :physical, :fire, :water, :earth, :holy, :necrotic, :nature],
                                                                attack_type_template_attributes: [:id, :name, :desc, :target, :cost_type, :cost,  :attack, :attack_type, :crit_chance, :crit_rate, :_destroy]])
  end
end
