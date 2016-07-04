class CharacterTemplate < ActiveRecord::Base
  has_many :armor_templates, dependent: :destroy
  has_many :weekness_templates, dependent: :destroy
  has_many :attack_type_templates, dependent: :destroy
  has_many :characters, dependent: :destroy
  has_one :image, dependent: :destroy
  accepts_nested_attributes_for :image
  accepts_nested_attributes_for :armor_templates
  accepts_nested_attributes_for :weekness_templates
  accepts_nested_attributes_for :attack_type_templates
end
