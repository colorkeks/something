class RewardTemplateItemTemplate < ActiveRecord::Base
  belongs_to :reward_template
  belongs_to :item_template
end
