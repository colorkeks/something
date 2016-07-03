class CharacterTemplateCharacter < ActiveRecord::Base
  belongs_to :character
  belongs_to :character_template
end