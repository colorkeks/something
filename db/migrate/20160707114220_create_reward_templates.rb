class CreateRewardTemplates < ActiveRecord::Migration
  def change
    create_table :reward_templates do |t|
      t.integer :exp
      t.integer :gold
      t.integer :item_template_id
      t.integer :quest_template_id,  null: false

      t.timestamps null: false
    end
  end
end
