class CreateWeeknesses < ActiveRecord::Migration
  def change
    create_table :weeknesses do |t|
      t.string :type
      t.integer :percent
      t.integer :character_id

      t.timestamps null: false
    end
  end
end
