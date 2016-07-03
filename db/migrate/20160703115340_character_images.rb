class CharacterImages < ActiveRecord::Migration
  def change
    create_table :character_images do |t|
      t.integer :character_id
      t.integer :image_id
      t.timestamps
    end
  end
end
