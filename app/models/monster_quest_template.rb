class MonsterQuestTemplate < ActiveRecord::Base
  belongs_to :monster
  belongs_to :quest_template
end
