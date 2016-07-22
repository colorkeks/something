class CharacterTemplate < ActiveRecord::Base
  has_many :attack_type_templates, as: :attackable, dependent: :destroy
  has_many :characters, dependent: :destroy
  has_one :image, as: :imageable, dependent: :destroy
  has_one :resist_template, as: :resistable, dependent: :destroy
  has_one :bag_template, dependent: :destroy
  accepts_nested_attributes_for :image, :reject_if => proc { |a| a['image_content'].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :resist_template, reject_if: :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :attack_type_templates, :reject_if => proc { |attributes| attributes.any? {|k,v| v.blank?} }, :allow_destroy => true
  accepts_nested_attributes_for :bag_template


  MAIN_PARAMS = ['Сила', 'Ловкость', 'Интеллект']
  HERO_CLASS = ['Воин', 'Маг', 'Разбойник']

end
