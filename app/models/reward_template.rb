class RewardTemplate < ActiveRecord::Base
  has_many :item_templates
  belongs_to :quest_template
  accepts_nested_attributes_for :item_templates
end
