class CreateCharacterParameters < ActiveRecord::Migration
  def change
    create_table :character_parameters do |t|
      t.integer :level
      t.integer :experience
      t.integer :hp
      t.float :strength
      t.float :intellect
      t.float :agility
      t.integer :character_id

      t.timestamps null: false
    end
  end
end
