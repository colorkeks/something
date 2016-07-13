class CreateAttackTypeTemplates < ActiveRecord::Migration
  def change
    create_table :attack_type_templates do |t|
      t.string    :name,                  null: false
      t.text    :desc,                  null: false
      t.int4range :attack,                null: false
      t.string    :attack_type,           null: false
      t.float     :crit_chance,           null: false
      t.int4range :crit_dmg,              null: false
      t.references :attackable, polymorphic: true, index: {name: 'index_attack_type_templates_on_attackable_type_and_id'}
      # t.integer   :character_template_id
      # t.integer   :item_template_id
      # t.integer   :monster_id

      t.timestamps null: false
    end
  end
end
