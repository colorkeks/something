class Item < ActiveRecord::Base
  has_one :attack_type, dependent: :destroy
  belongs_to :bag
  belongs_to :item_template
end
