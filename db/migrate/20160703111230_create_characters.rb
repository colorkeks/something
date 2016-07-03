class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.text :description
      t.integer :hp
      t.integer :strength
      t.integer :intellect
      t.integer :agility
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
