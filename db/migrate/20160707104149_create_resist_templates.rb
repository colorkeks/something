class CreateResistTemplates < ActiveRecord::Migration
  def change
    create_table :resist_templates do |t|
      t.float   :physical,          default: 0
      t.float   :fire,              default: 0
      t.float   :water,             default: 0
      t.float   :earth,             default: 0
      t.float   :holy,              default: 0
      t.float   :necrotic,          default: 0
      t.float   :nature,            default: 0
      t.references :resistable, polymorphic: true, index: true
      # t.integer :item_template_id
      # t.integer :character_template_id
      # t.integer :monster_id

      t.timestamps null: false
    end
  end
end
