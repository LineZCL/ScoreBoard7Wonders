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

ActiveRecord::Schema.define(version: 20150312023303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "game_name"
    t.date   "date"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
  end

  create_table "score_boards", force: :cascade do |t|
    t.integer "player_id"
    t.integer "game_id"
    t.integer "final_score"
    t.boolean "winner"
  end

  add_index "score_boards", ["game_id"], name: "index_score_boards_on_game_id", using: :btree
  add_index "score_boards", ["player_id"], name: "index_score_boards_on_player_id", using: :btree

  add_foreign_key "score_boards", "games"
  add_foreign_key "score_boards", "players"
end