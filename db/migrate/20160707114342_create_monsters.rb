class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name,                null: false
      t.integer :hp,                 null: false
      t.integer :quest_template_id

      t.timestamps null: false
    end
  end
end
