# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_03_04_185617) do
  create_table "actors", force: :cascade do |t|
    t.string "actor_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "burgers", force: :cascade do |t|
    t.string "burger_name"
    t.integer "price"
    t.integer "episode_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["episode_id"], name: "index_burgers_on_episode_id"
  end

  create_table "character_episodes", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "episode_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_episodes_on_character_id"
    t.index ["episode_id"], name: "index_character_episodes_on_episode_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "occupation"
    t.integer "actor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_characters_on_actor_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "air_date"
    t.integer "season"
    t.integer "episode_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "store_name"
    t.integer "episode_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["episode_id"], name: "index_stores_on_episode_id"
  end

  add_foreign_key "burgers", "episodes"
  add_foreign_key "character_episodes", "characters"
  add_foreign_key "character_episodes", "episodes"
  add_foreign_key "characters", "actors"
  add_foreign_key "stores", "episodes"
end
