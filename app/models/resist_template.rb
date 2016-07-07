class ResistTemplate < ActiveRecord::Base
  has_many :resists, dependent: :destroy
  belongs_to :character_template
  belongs_to :item_template
  belongs_to :monster
end
