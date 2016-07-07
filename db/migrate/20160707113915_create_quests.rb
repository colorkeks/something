class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.boolean :complete
      t.integer :character_id
      t.integer :quest_template_id

      t.timestamps null: false
    end
  end
end
