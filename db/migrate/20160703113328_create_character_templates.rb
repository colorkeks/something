class CreateCharacterTemplates < ActiveRecord::Migration
  def change
    create_table :character_templates do |t|
      t.string  :name
      t.text    :description
      t.string  :hero_class, default: 'warrior'
      t.integer :hp,         default: 1
      t.integer :mp,         default: 1
      t.integer :haste,      default: 1
      t.float   :strength,   default: 1
      t.float   :intellect,  default: 1
      t.float   :agility,    default: 1
      t.string  :main_param, null: false

      t.timestamps null: false
    end
  end
end
