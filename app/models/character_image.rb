class CharacterImage < ActiveRecord::Base
  belongs_to :character
  belongs_to :image
end