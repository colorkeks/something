class CreateMonsterQuestTemplates < ActiveRecord::Migration
  def change
    create_table :monster_quest_templates do |t|
      t.belongs_to :monster, index: true
      t.belongs_to :quest_template, index: true
      t.timestamps null: false
    end
  end
end
