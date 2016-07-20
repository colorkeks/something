class AttackTypeTemplate < ActiveRecord::Base
  has_many :attack_types, dependent: :destroy
  belongs_to :attackable, polymorphic: true
  # belongs_to :character_template
  # belongs_to :item_template
  # belongs_to :monster

  # validates :name, format: { with: /\A[a-zA-Zа-яА-Я0-9]+(?: [a-zA-Zа-яА-Я0-9]+)?\z/, message: "доступны только кириллица и латинница" },length: { in: 2..20 }
  # validates :attack, numericality: {greater_than_or_equal_to: 1}
  # validates :crit_chance, numericality: {greater_than_or_equal_to: 0 , less_than_or_equal_to: 100}
end
