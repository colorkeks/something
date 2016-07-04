class CreateArmorTemplates < ActiveRecord::Migration
  def change
    create_table :armor_templates do |t|
      t.string :type
      t.float :percent
      t.integer :character_template_id

      t.timestamps null: false
    end
  end
end
