class CreateAttackTypeTemplates < ActiveRecord::Migration
  def change
    create_table :attack_type_templates do |t|
      t.string    :name
      t.text      :desc
      t.string    :target
      t.string    :cost_type
      t.integer   :cost
      t.integer   :attack
      t.string    :attack_type
      t.float     :crit_chance
      t.float     :crit_rate
      t.references :attackable, polymorphic: true, index: {name: 'index_attack_type_templates_on_attackable_type_and_id'}
      # t.integer   :character_template_id
      # t.integer   :item_template_id
      # t.integer   :monster_id

      t.timestamps null: false
    end
  end
end
