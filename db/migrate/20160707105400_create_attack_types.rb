class CreateAttackTypes < ActiveRecord::Migration
  def change
    create_table :attack_types do |t|
      t.int4range :attack
      t.float :crit_chance
      t.int4range :crit_dmg
      t.integer :character_id
      t.integer :item_id
      t.integer :attack_type_template_id

      t.timestamps null: false
    end
  end
end
