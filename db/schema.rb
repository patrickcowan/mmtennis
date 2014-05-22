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

ActiveRecord::Schema.define(version: 20140430010253) do

  create_table "associations", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "associations", ["event_id"], name: "index_associations_on_event_id"
  add_index "associations", ["user_id", "event_id"], name: "index_associations_on_user_id_and_event_id", unique: true
  add_index "associations", ["user_id"], name: "index_associations_on_user_id"

  create_table "event_bookings", force: true do |t|
    t.integer  "event_registration_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_bookings", ["event_registration_id"], name: "index_event_bookings_on_event_registration_id"

  create_table "event_registrations", force: true do |t|
    t.integer  "event_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "child_name"
    t.integer  "child_age"
    t.string   "payment_method"
    t.text     "other_details"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "surname"
  end

  add_index "event_registrations", ["event_id"], name: "index_event_registrations_on_event_id"
  add_index "event_registrations", ["user_id"], name: "index_event_registrations_on_user_id"

  create_table "event_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_users", ["event_id"], name: "index_event_users_on_event_id"
  add_index "event_users", ["user_id", "event_id"], name: "index_event_users_on_user_id_and_event_id", unique: true
  add_index "event_users", ["user_id"], name: "index_event_users_on_user_id"

  create_table "events", force: true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "coaches"
    t.string   "string"
    t.string   "Venue"
    t.date     "Date"
    t.time     "Time"
    t.string   "data"
  end

  create_table "lesson_bookings", force: true do |t|
    t.integer  "lesson_registration_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lesson_bookings", ["lesson_registration_id"], name: "index_lesson_bookings_on_lesson_registration_id"

  create_table "registrations", force: true do |t|
    t.integer  "event_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "child_name"
    t.integer  "child_age"
    t.string   "payment_method"
    t.text     "other_details"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registrations", ["event_id"], name: "index_registrations_on_event_id"
  add_index "registrations", ["user_id"], name: "index_registrations_on_user_id"

  create_table "relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["user_id", "created_at"], name: "index_relationships_on_user_id_and_created_at"

  create_table "user1s", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
