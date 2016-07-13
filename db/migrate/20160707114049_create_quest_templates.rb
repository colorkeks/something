class CreateQuestTemplates < ActiveRecord::Migration
  def change
    create_table :quest_templates do |t|
      t.integer :name,        null: false
      t.text    :description, null: false
      t.integer :next_id,     default: nil

      t.timestamps null: false
    end
  end
end
