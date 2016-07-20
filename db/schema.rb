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
    t.string   "name"
    t.text     "desc"
    t.string   "target"
    t.string   "cost_type"
    t.integer  "cost"
    t.integer  "attack"
    t.string   "attack_type"
    t.float    "crit_chance"
    t.float    "crit_rate"
    t.integer  "attackable_id"
    t.string   "attackable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "attack_type_templates", ["attackable_type", "attackable_id"], name: "index_attack_type_templates_on_attackable_type_and_id", using: :btree

  create_table "attack_types", force: :cascade do |t|
    t.integer  "attack",                  null: false
    t.float    "crit_chance",             null: false
    t.float    "crit_rate",               null: false
    t.integer  "character_id"
    t.integer  "item_id"
    t.integer  "attack_type_template_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "bag_templates", force: :cascade do |t|
    t.integer  "gold",                  default: 0
    t.integer  "character_template_id",             null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "bags", force: :cascade do |t|
    t.integer  "gold",         default: 0
    t.integer  "character_id",             null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "character_parameters", force: :cascade do |t|
    t.integer  "level",        default: 1
    t.integer  "experience",               null: false
    t.integer  "hp",                       null: false
    t.float    "strength",                 null: false
    t.float    "intellect",                null: false
    t.float    "agility",                  null: false
    t.integer  "character_id",             null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "character_templates", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "hp",          default: 1
    t.integer  "mp",          default: 1
    t.integer  "haste",       default: 1
    t.float    "strength",    default: 1.0
    t.float    "intellect",   default: 1.0
    t.float    "agility",     default: 1.0
    t.string   "main_param",                null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "characters", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "character_template_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "image_content_file_name"
    t.string   "image_content_content_type"
    t.integer  "image_content_file_size"
    t.datetime "image_content_updated_at"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id", using: :btree

  create_table "item_templates", force: :cascade do |t|
    t.string   "name",                               null: false
    t.text     "description",                        null: false
    t.string   "item_type",                          null: false
    t.integer  "strength",           default: 1
    t.integer  "intellect",          default: 1
    t.integer  "agility",            default: 1
    t.boolean  "purchasable",        default: false
    t.integer  "sell_cost",          default: 1
    t.integer  "buy_cost"
    t.integer  "bag_template_id"
    t.integer  "reward_template_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "items", force: :cascade do |t|
    t.boolean  "equipped",         default: false
    t.integer  "item_template_id"
    t.integer  "bag_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.string   "name",              null: false
    t.integer  "hp",                null: false
    t.integer  "quest_template_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "quest_templates", force: :cascade do |t|
    t.integer  "name",        null: false
    t.text     "description", null: false
    t.integer  "next_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "quests", force: :cascade do |t|
    t.boolean  "complete",          default: false
    t.integer  "character_id"
    t.integer  "quest_template_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "resist_templates", force: :cascade do |t|
    t.float    "physical",        default: 0.0
    t.float    "fire",            default: 0.0
    t.float    "water",           default: 0.0
    t.float    "earth",           default: 0.0
    t.float    "holy",            default: 0.0
    t.float    "necrotic",        default: 0.0
    t.float    "nature",          default: 0.0
    t.integer  "resistable_id"
    t.string   "resistable_type"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "resist_templates", ["resistable_type", "resistable_id"], name: "index_resist_templates_on_resistable_type_and_resistable_id", using: :btree

  create_table "resists", force: :cascade do |t|
    t.float    "physical",           default: 0.0
    t.float    "fire",               default: 0.0
    t.float    "water",              default: 0.0
    t.float    "earth",              default: 0.0
    t.float    "holy",               default: 0.0
    t.float    "necrotic",           default: 0.0
    t.float    "nature",             default: 0.0
    t.integer  "character_id"
    t.integer  "resist_template_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "reward_templates", force: :cascade do |t|
    t.integer  "exp"
    t.integer  "gold"
    t.integer  "item_template_id"
    t.integer  "quest_template_id", null: false
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
