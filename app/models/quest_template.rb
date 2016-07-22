class QuestTemplate < ActiveRecord::Base
  has_many :monster_quest_templates
  has_many :monsters, through: :monster_quest_templates
  has_many :quests
  has_one :reward_template
  accepts_nested_attributes_for :monsters
  accepts_nested_attributes_for :reward_template
end
