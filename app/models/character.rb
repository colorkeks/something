class Character < ActiveRecord::Base
  has_many :armors, dependent: :destroy
  has_many :weeknesses, dependent: :destroy
  has_many :attack_types, dependent: :destroy
  has_one :character_image, dependent: :destroy
  has_one :image, through: :CharacterImage
  has_one :character_template_character, dependent: :destroy
  has_one :character_template, :through => :character_template_characters
  has_one :character_parameter, dependent: :destroy
end
