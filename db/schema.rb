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

ActiveRecord::Schema.define(version: 20160713150454) do

  create_table "rpis", force: :cascade do |t|
    t.string   "uuid"
    t.float    "lat"
    t.float    "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "train_statuses", force: :cascade do |t|
    t.integer  "rpi_id"
    t.integer  "train_id"
    t.string   "major"
    t.string   "minor"
    t.integer  "measured_power"
    t.integer  "rssi"
    t.float    "accuracy"
    t.string   "proximity"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["rpi_id"], name: "index_train_statuses_on_rpi_id"
    t.index ["train_id"], name: "index_train_statuses_on_train_id"
  end

  create_table "trains", force: :cascade do |t|
    t.string   "name"
    t.string   "uuid"
    t.float    "lat"
    t.float    "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
