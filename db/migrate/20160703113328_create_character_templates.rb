class CreateCharacterTemplates < ActiveRecord::Migration
  def change
    create_table :character_templates do |t|
      t.string :name
      t.text :description
      t.integer :hp
      t.float :strength
      t.float :intellect
      t.float :agility

      t.timestamps null: false
    end
  end
end
