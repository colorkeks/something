class ItemTemplate < ActiveRecord::Base
  has_many :resist_templates, dependent: :destroy
  has_many :items, dependent: :destroy
  has_one :attack_type_template, dependent: :destroy
  has_one :image, as: :imageable, dependent: :destroy
  belongs_to :character_template
  accepts_nested_attributes_for :image
end
