class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|
      t.integer :gold
      t.integer :character_id

      t.timestamps null: false
    end
  end
end
