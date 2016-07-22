class ItemTemplate < ActiveRecord::Base
  has_many :items,               dependent: :destroy
  has_many :reward_template_item_templates
  has_many :reward_templates, through: :reward_template_item_templates
  has_one :resist_template,      as: :resistable, dependent: :destroy
  has_one :attack_type_template, as: :attackable, dependent: :destroy
  has_one :image,                as: :imageable, dependent: :destroy
  belongs_to :bag_template
  accepts_nested_attributes_for :image
  accepts_nested_attributes_for :resist_template
  accepts_nested_attributes_for :attack_type_template

  ITEM_TYPES = ['Шлем', 'Плечи', 'Тело', 'Пояс', 'Ноги',
                'Ботинки', 'Основная рука', 'Вторая рука', 'Кольцо 1', 'Кольцо 2']
end
