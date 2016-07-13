class CreateResists < ActiveRecord::Migration
  def change
    create_table :resists do |t|
      t.float   :physical,        default: 0
      t.float   :fire,            default: 0
      t.float   :water,           default: 0
      t.float   :earth,           default: 0
      t.float   :holy,            default: 0
      t.float   :necrotic,        default: 0
      t.float   :nature,          default: 0
      t.integer :character_id
      t.integer :resist_template_id

      t.timestamps null: false
    end
  end
end
