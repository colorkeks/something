class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.boolean :equipped, default: false
      t.integer :item_template_id
      t.integer :bag_id

      t.timestamps null: false
    end
  end
end
