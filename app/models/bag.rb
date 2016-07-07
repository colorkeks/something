class Bag < ActiveRecord::Base
  has_many :items
  belongs_to :character
end
