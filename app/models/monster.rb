class Monster < ActiveRecord::Base
  has_many :attack_type_templates
  has_one :image, as: :imageable, dependent: :destroy
  has_one :resist_template
  belongs_to :quest_template
end
