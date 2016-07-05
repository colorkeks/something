class CreateResists < ActiveRecord::Migration
  def change
    create_table :resists do |t|
      t.float :percent
      t.integer :character_id
      t.integer :resist_template_id
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
