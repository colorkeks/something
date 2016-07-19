class CreateAttackTypes < ActiveRecord::Migration
  def change
    create_table :attack_types do |t|
      t.integer   :attack,                null: false
      t.float     :crit_chance,           null: false
      t.float     :crit_rate, null: false
      t.integer   :character_id
      t.integer   :item_id
      t.integer   :attack_type_template_id

      t.timestamps null: false
    end
  end
end
