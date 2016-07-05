class CreateAttackTypes < ActiveRecord::Migration
  def change
    create_table :attack_types do |t|
      t.integer :attack
      t.integer :character_id
      t.integer :attack_type_template_id
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
