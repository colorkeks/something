class CreateAttackTypes < ActiveRecord::Migration
  def change
    create_table :attack_types do |t|
      t.string :name
      t.text :description
      t.integer :attack
      t.string :attack_type
      t.integer :character_id

      t.timestamps null: false
    end
  end
end
