class CreateArmors < ActiveRecord::Migration
  def change
    create_table :armors do |t|
      t.string :type
      t.float :percent
      t.integer :character_id

      t.timestamps null: false
    end
  end
end
