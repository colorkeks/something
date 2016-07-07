class CreateResists < ActiveRecord::Migration
  def change
    create_table :resists do |t|
      t.float :physical
      t.float :fire
      t.float :water
      t.float :earth
      t.float :holy
      t.float :necrotic
      t.float :nature
      t.integer :character_id
      t.integer :resist_template_id

      t.timestamps null: false
    end
  end
end
