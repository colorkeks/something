class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|
      t.integer :gold,        default: 0
      t.integer :character_id, null: false

      t.timestamps null: false
    end
  end
end
