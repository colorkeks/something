class CharacterTemplateCharacters < ActiveRecord::Migration
  def change
    create_table :character_template_characters do |t|
      t.integer :character_id
      t.integer :character_template_id
      t.timestamps
    end
  end
end
