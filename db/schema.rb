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

ActiveRecord::Schema.define(version: 20150904113240) do

  create_table "club_movies", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "videolink"
    t.integer  "active"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "club_movies", ["user_id"], name: "index_club_movies_on_user_id"

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "address"
    t.integer  "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movie_comments", force: true do |t|
    t.text     "message"
    t.integer  "user_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "movie_comments", ["movie_id"], name: "index_movie_comments_on_movie_id"
  add_index "movie_comments", ["user_id"], name: "index_movie_comments_on_user_id"

  create_table "movies", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "director"
    t.string   "genre"
    t.integer  "playtime"
    t.integer  "published"
    t.string   "imglink"
    t.string   "trailerlink"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "participants", force: true do |t|
    t.integer  "club_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "participants", ["club_id"], name: "index_participants_on_club_id"
  add_index "participants", ["event_id"], name: "index_participants_on_event_id"

  create_table "ratings", force: true do |t|
    t.integer  "value"
    t.integer  "movie_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["movie_id"], name: "index_ratings_on_movie_id"
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id"

  create_table "reviews", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "videolink"
    t.integer  "active"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "movie_id"
  end

  add_index "reviews", ["movie_id"], name: "index_reviews_on_movie_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "personalnumber"
    t.integer  "phonenumber"
    t.string   "avatar"
    t.string   "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "parentmail"
    t.integer  "access"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.integer  "club_id"
  end

  add_index "users", ["club_id"], name: "index_users_on_club_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end