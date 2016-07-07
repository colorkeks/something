class CreateAttackTypeTemplates < ActiveRecord::Migration
  def change
    create_table :attack_type_templates do |t|
      t.string :name
      t.int4range :attack
      t.string :attack_type
      t.float :crit_chance
      t.int4range :crit_dmg
      t.integer :character_template_id
      t.integer :item_template_id
      t.integer :monster_id

      t.timestamps null: false
    end
  end
end
