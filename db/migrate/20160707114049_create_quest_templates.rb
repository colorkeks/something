class CreateQuestTemplates < ActiveRecord::Migration
  def change
    create_table :quest_templates do |t|
      t.integer :name
      t.text :description
      t.integer :next_id

      t.timestamps null: false
    end
  end
end
