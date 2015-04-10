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

ActiveRecord::Schema.define(version: 20150410183731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string   "street_address",   null: false
    t.string   "extended_address"
    t.string   "city",             null: false
    t.string   "country",          null: false
    t.string   "postal_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "events", force: true do |t|
    t.text     "description", null: false
    t.datetime "begin_at",    null: false
    t.datetime "end_at",      null: false
    t.integer  "address_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["address_id"], name: "index_events_on_address_id", using: :btree

  create_table "images", force: true do |t|
    t.integer  "imageable_id",               null: false
    t.string   "imageable_type",             null: false
    t.string   "image_uid",                  null: false
    t.string   "image_name"
    t.integer  "image_height",   default: 0
    t.integer  "image_width",    default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["imageable_id", "imageable_type"], name: "index_images_on_imageable_id_and_imageable_type", using: :btree

  create_table "participations", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "event_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "participations", ["event_id"], name: "index_participations_on_event_id", using: :btree
  add_index "participations", ["user_id"], name: "index_participations_on_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "kind",             null: false
    t.integer  "participation_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["participation_id"], name: "index_roles_on_participation_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name",        null: false
    t.string   "email",       null: false
    t.integer  "facebook_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
