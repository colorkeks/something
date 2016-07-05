class ItemTemplate < ActiveRecord::Base
  has_many :resist_templates, dependent: :destroy
  has_one :attack_type_template, dependent: :destroy
  has_many :items, dependent: :destroy
  belongs_to :character_template

end
