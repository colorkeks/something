class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :hp
      t.integer :quest_template_id

      t.timestamps null: false
    end
  end
end
