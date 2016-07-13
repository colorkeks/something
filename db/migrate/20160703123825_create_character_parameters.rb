class CreateCharacterParameters < ActiveRecord::Migration
  def change
    create_table :character_parameters do |t|
      t.integer :level,        default: 1
      t.integer :experience,   null: false
      t.integer :hp,           null: false
      t.float   :strength,     null: false
      t.float   :intellect,    null: false
      t.float   :agility,      null: false
      t.integer :character_id, null: false

      t.timestamps null: false
    end
  end
end
