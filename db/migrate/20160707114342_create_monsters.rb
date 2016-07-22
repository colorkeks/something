class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name,                null: false
      t.text :desc
      t.integer :hp,                 null: false

      t.timestamps null: false
    end
  end
end
