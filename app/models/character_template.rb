class CharacterTemplate < ActiveRecord::Base
  has_many :attack_type_templates, dependent: :destroy
  has_many :characters, dependent: :destroy
  has_one :image, as: :imageable, dependent: :destroy
  has_one :resist_template, dependent: :destroy
  has_one :bag_template, dependent: :destroy
  accepts_nested_attributes_for :image
  accepts_nested_attributes_for :resist_template
  accepts_nested_attributes_for :attack_type_templates
  accepts_nested_attributes_for :bag_template
end
