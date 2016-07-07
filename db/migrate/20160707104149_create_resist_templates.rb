class CreateResistTemplates < ActiveRecord::Migration
  def change
    create_table :resist_templates do |t|
      t.float :physical
      t.float :fire
      t.float :water
      t.float :earth
      t.float :holy
      t.float :necrotic
      t.float :nature
      t.integer :item_template_id
      t.integer :character_template_id
      t.integer :monster_id

      t.timestamps null: false
    end
  end
end
