class CreateBagTemplates < ActiveRecord::Migration
  def change
    create_table :bag_templates do |t|
      t.integer :gold
      t.integer :character_template_id

      t.timestamps null: false
    end
  end
end
