# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160707114342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attack_type_templates", force: :cascade do |t|
    t.string    "name"
    t.int4range "attack"
    t.string    "attack_type"
    t.float     "crit_chance"
    t.int4range "crit_dmg"
    t.integer   "character_template_id"
    t.integer   "item_template_id"
    t.integer   "monster_id"
    t.datetime  "created_at",            null: false
    t.datetime  "updated_at",            null: false
  end

  create_table "attack_types", force: :cascade do |t|
    t.int4range "attack"
    t.float     "crit_chance"
    t.int4range "crit_dmg"
    t.integer   "character_id"
    t.integer   "item_id"
    t.integer   "attack_type_template_id"
    t.datetime  "created_at",              null: false
    t.datetime  "updated_at",              null: false
  end

  create_table "bag_templates", force: :cascade do |t|
    t.integer  "gold"
    t.integer  "character_template_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "bags", force: :cascade do |t|
    t.integer  "gold"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "character_parameters", force: :cascade do |t|
    t.integer  "level"
    t.integer  "experience"
    t.integer  "hp"
    t.float    "strength"
    t.float    "intellect"
    t.float    "agility"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "character_templates", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "hp"
    t.float    "strength"
    t.float    "intellect"
    t.float    "agility"
    t.string   "main_param"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "characters", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "character_template_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id", using: :btree

  create_table "item_templates", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "item_type"
    t.integer  "strength"
    t.integer  "intellect"
    t.integer  "agility"
    t.integer  "sell_cost"
    t.integer  "buy_cost"
    t.boolean  "purchasable"
    t.integer  "bag_template_id"
    t.integer  "reward_template_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "items", force: :cascade do |t|
    t.boolean  "equipped"
    t.integer  "item_template_id"
    t.integer  "bag_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.string   "name"
    t.integer  "hp"
    t.integer  "quest_template_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "quest_templates", force: :cascade do |t|
    t.integer  "name"
    t.text     "description"
    t.integer  "next_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "quests", force: :cascade do |t|
    t.boolean  "complete"
    t.integer  "character_id"
    t.integer  "quest_template_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "resist_templates", force: :cascade do |t|
    t.float    "physical"
    t.float    "fire"
    t.float    "water"
    t.float    "earth"
    t.float    "holy"
    t.float    "necrotic"
    t.float    "nature"
    t.integer  "item_template_id"
    t.integer  "character_template_id"
    t.integer  "monster_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "resists", force: :cascade do |t|
    t.float    "physical"
    t.float    "fire"
    t.float    "water"
    t.float    "earth"
    t.float    "holy"
    t.float    "necrotic"
    t.float    "nature"
    t.integer  "character_id"
    t.integer  "resist_template_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "reward_templates", force: :cascade do |t|
    t.integer  "exp"
    t.integer  "gold"
    t.integer  "item_template_id"
    t.integer  "quest_template_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "nickname",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["nickname"], name: "index_users_on_nickname", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
