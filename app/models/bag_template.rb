class BagTemplate < ActiveRecord::Base
  has_many :item_templates, dependent: :destroy
  belongs_to :character_template
  accepts_nested_attributes_for :item_templates
end
