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

ActiveRecord::Schema.define(version: 20160829184531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.float    "lat"
    t.float    "lng"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attendees", force: true do |t|
    t.integer  "user_id"
    t.integer  "groupride_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attendees", ["groupride_id"], name: "index_attendees_on_groupride_id", using: :btree
  add_index "attendees", ["user_id"], name: "index_attendees_on_user_id", using: :btree

  create_table "comments", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "favorites", force: true do |t|
    t.integer  "user_id"
    t.integer  "route_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["route_id"], name: "index_favorites_on_route_id", using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "friendships", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friendships", ["friend_id"], name: "index_friendships_on_friend_id", using: :btree
  add_index "friendships", ["user_id"], name: "index_friendships_on_user_id", using: :btree

  create_table "grouprides", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "route_id"
    t.integer  "user_id"
    t.integer  "group_limit"
    t.time     "meet_time"
    t.time     "ksu_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "grouprides", ["route_id"], name: "index_grouprides_on_route_id", using: :btree
  add_index "grouprides", ["user_id"], name: "index_grouprides_on_user_id", using: :btree

  create_table "ratings", force: true do |t|
    t.integer  "rank"
    t.integer  "user_id"
    t.integer  "route_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["route_id"], name: "index_ratings_on_route_id", using: :btree
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id", using: :btree

  create_table "routes", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "difficulty"
    t.integer  "speed"
    t.integer  "address_id"
    t.integer  "user_id"
    t.json     "route"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "routes", ["address_id"], name: "index_routes_on_address_id", using: :btree
  add_index "routes", ["user_id"], name: "index_routes_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "nickname"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "motorcycles"
    t.string   "experience"
    t.string   "password_digest"
    t.text     "description"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["address_id"], name: "index_users_on_address_id", using: :btree

end
