class CharacterTemplate < ActiveRecord::Base
  has_many :armor_templates, dependent: :destroy
  has_many :weekness_templates, dependent: :destroy
  has_many :attack_type_templates, dependent: :destroy
  has_one  :image, dependent: :destroy
  has_many :character_template_characters, dependent: :destroy
  has_many :characters, through: :character_template_characters, dependent: :destroy
end
