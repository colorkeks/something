class Quest < ActiveRecord::Base
  belongs_to :quest_template
  belongs_to :character
end
