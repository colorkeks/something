class CreateRewardTemplateItemTemplates < ActiveRecord::Migration
  def change
    create_table :reward_template_item_templates do |t|
      t.belongs_to :reward_template, index: true
      t.belongs_to :item_template, index: true
      t.timestamps null: false
    end
  end
end
