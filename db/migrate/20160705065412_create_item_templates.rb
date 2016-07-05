class CreateItemTemplates < ActiveRecord::Migration
  def change
    create_table :item_templates do |t|
      t.string :name
      t.text :description
      t.string :item_type
      t.boolean :equipped
      t.integer :strength
      t.integer :intellect
      t.integer :agility
      t.integer :character_template_id

      t.timestamps null: false
    end
  end
end
