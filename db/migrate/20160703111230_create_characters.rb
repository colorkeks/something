class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.text :description
      t.integer :hp
      t.float :strength
      t.float :intellect
      t.float :agility
      t.integer :user_id
      t.integer :character_template_id

      t.timestamps null: false
    end
  end
end
