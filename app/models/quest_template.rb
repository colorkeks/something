class QuestTemplate < ActiveRecord::Base
  has_many :monsters
  has_many :quests
  has_one :reward_template
  accepts_nested_attributes_for :monsters
  accepts_nested_attributes_for :reward_template
end
