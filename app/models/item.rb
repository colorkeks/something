class Item < ActiveRecord::Base
  has_many :resists, dependent: :destroy
  has_one :attack_type, dependent: :destroy
  belongs_to :character
  belongs_to :item_template
end
