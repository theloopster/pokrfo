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

ActiveRecord::Schema.define(version: 20150112184606) do

  create_table "events", force: true do |t|
    t.integer  "game"
    t.integer  "action",     limit: 255
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "game_id"
    t.integer  "player_id"
  end

  add_index "events", ["game_id", "player_id"], name: "index_events_on_game_id_and_player_id"
  add_index "events", ["player_id"], name: "index_events_on_player_id"

  create_table "games", force: true do |t|
    t.string   "host"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "league_id"
  end

  add_index "games", ["league_id"], name: "index_games_on_league_id"

  create_table "games_players", id: false, force: true do |t|
    t.integer "game_id",   null: false
    t.integer "player_id", null: false
  end

  add_index "games_players", ["game_id", "player_id"], name: "index_games_players_on_game_id_and_player_id"
  add_index "games_players", ["player_id", "game_id"], name: "index_games_players_on_player_id_and_game_id"

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "handle"
    t.string   "address"
    t.string   "string"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
