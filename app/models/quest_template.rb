class QuestTemplate < ActiveRecord::Base
  has_many :monsters
  has_many :quests
  has_one :reward_template
end
