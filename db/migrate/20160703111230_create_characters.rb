class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :user_id
      t.integer :character_template_id

      t.timestamps null: false
    end
  end
end
