class AttackType < ActiveRecord::Base
  belongs_to :character
  belongs_to :attack_type_template
end
