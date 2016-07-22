class AttackTypeTemplate < ActiveRecord::Base
  has_many :attack_types, dependent: :destroy
  belongs_to :attackable, polymorphic: true

  ATTACK_TARGET = ['Герой', 'Все', 'Все противники', 'Все_союзники', 'Противник', 'Союзник']
  ATTACK_TYPE   = ['Лечение', 'Физический урон', 'Огонь', 'Вода', 'Земля', 'Сила света', 'Некротический урон', 'Сила природы']
  COST_TYPE     = ['Нет', 'Здоровье', 'Мана']
  CRIT_RATE     = [1.25, 1.5, 1.75, 2, 2.25]
  # validates :name, format: { with: /\A[a-zA-Zа-яА-Я0-9]+(?: [a-zA-Zа-яА-Я0-9]+)?\z/, message: "доступны только кириллица и латинница" },length: { in: 2..20 }
  # validates :attack, numericality: {greater_than_or_equal_to: 1}
  # validates :crit_chance, numericality: {greater_than_or_equal_to: 0 , less_than_or_equal_to: 100}
end
