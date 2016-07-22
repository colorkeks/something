class Monster < ActiveRecord::Base
  has_many :monster_quest_templates
  has_many :quest_templates, through: :monster_quest_templates
  has_many :attack_type_templates, as: :attackable, dependent: :destroy
  has_one :image, as: :imageable, dependent: :destroy
  has_one :resist_template, as: :resistable, dependent: :destroy
  accepts_nested_attributes_for :image
  accepts_nested_attributes_for :attack_type_templates
  accepts_nested_attributes_for :resist_template
end
