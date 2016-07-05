class Character < ActiveRecord::Base
  has_many :resists, dependent: :destroy
  has_many :attack_types, dependent: :destroy
  has_one :character_parameter, dependent: :destroy
  has_many :items, dependent: :destroy
  belongs_to :character_template
  belongs_to :user
end
