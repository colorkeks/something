class AttackTypeTemplate < ActiveRecord::Base
  has_many :attack_types, dependent: :destroy
  belongs_to :character_template
  belongs_to :item_template
end
