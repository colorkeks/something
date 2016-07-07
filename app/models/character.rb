class Character < ActiveRecord::Base
  has_many :attack_types, dependent: :destroy
  has_one :character_parameter, dependent: :destroy
  has_one :resist, dependent: :destroy
  has_one :bag, dependent: :destroy
  belongs_to :character_template
  belongs_to :user
end
