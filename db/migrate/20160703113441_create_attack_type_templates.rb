class CreateAttackTypeTemplates < ActiveRecord::Migration
  def change
    create_table :attack_type_templates do |t|
      t.string :name
      t.text :description
      t.integer :attack
      t.string :attack_type
      t.integer :character_template_id

      t.timestamps null: false
    end
  end
end
