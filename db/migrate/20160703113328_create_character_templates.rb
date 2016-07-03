class CreateCharacterTemplates < ActiveRecord::Migration
  def change
    create_table :character_templates do |t|
      t.string :name
      t.text :description
      t.integer :hp
      t.integer :strength
      t.integer :intellect
      t.integer :agility

      t.timestamps null: false
    end
  end
end
