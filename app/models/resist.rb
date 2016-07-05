class Resist < ActiveRecord::Base
  belongs_to :character
  belongs_to :resist_template
end
