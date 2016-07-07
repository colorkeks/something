class RewardTemplate < ActiveRecord::Base
  has_many :item_templates
  belongs_to :quest_template
end
