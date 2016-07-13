class Monster < ActiveRecord::Base
  has_many :attack_type_templates, as: :attackable, dependent: :destroy
  has_one :image, as: :imageable, dependent: :destroy
  has_one :resist_template, as: :resistable, dependent: :destroy
  belongs_to :quest_template
end
