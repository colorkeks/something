class CreateBagTemplates < ActiveRecord::Migration
  def change
    create_table :bag_templates do |t|
      t.integer :gold,                  default: 0
      t.integer :character_template_id, null: false

      t.timestamps null: false
    end
  end
end
