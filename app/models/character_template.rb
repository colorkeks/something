class CharacterTemplate < ActiveRecord::Base
  has_many :resist_templates, dependent: :destroy
  has_many :attack_type_templates, dependent: :destroy
  has_many :characters, dependent: :destroy
  has_many :item_templates, dependent: :destroy
  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image
  accepts_nested_attributes_for :resist_templates
  accepts_nested_attributes_for :attack_type_templates
  accepts_nested_attributes_for :item_templates
end
