class CreateItemTemplates < ActiveRecord::Migration
  def change
    create_table :item_templates do |t|
      t.string  :name,        null: false
      t.text    :description, null: false
      t.string  :item_type,   null: false
      t.integer :strength,    default: 1
      t.integer :intellect,   default: 1
      t.integer :agility,     default: 1
      t.boolean :purchasable, default: false
      t.integer :sell_cost,   default: 1
      t.integer :buy_cost
      t.integer :bag_template_id
      t.integer :reward_template_id

      t.timestamps null: false
    end
  end
end
