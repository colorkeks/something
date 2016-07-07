class CreateItemTemplates < ActiveRecord::Migration
  def change
    create_table :item_templates do |t|
      t.string :name
      t.text :description
      t.string :item_type
      t.integer :strength
      t.integer :intellect
      t.integer :agility
      t.integer :sell_cost
      t.integer :buy_cost
      t.boolean :purchasable
      t.integer :bag_template_id
      t.integer :reward_template_id

      t.timestamps null: false
    end
  end
end
