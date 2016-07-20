class ItemTemplate < ActiveRecord::Base
  has_many :items,               dependent: :destroy
  has_one :resist_template,      as: :resistable, dependent: :destroy
  has_one :attack_type_template, as: :attackable, dependent: :destroy
  has_one :image,                as: :imageable, dependent: :destroy
  belongs_to :bag_template
  accepts_nested_attributes_for :image
  accepts_nested_attributes_for :resist_template
  accepts_nested_attributes_for :attack_type_template
end
