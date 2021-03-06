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

ActiveRecord::Schema.define(version: 20160615141455) do

  create_table "employees", force: :cascade do |t|
    t.string   "first"
    t.string   "last"
    t.decimal  "hrly_cost"
    t.decimal  "hrs_todate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paving_bids", force: :cascade do |t|
    t.integer  "jobID"
    t.string   "jobName"
    t.string   "jobAddress"
    t.string   "contactName"
    t.integer  "contactPhone"
    t.string   "contactAddress"
    t.date     "bidDate"
    t.boolean  "tax"
    t.decimal  "taxRate"
    t.integer  "squareFeet"
    t.decimal  "garitySYrate"
    t.decimal  "damicoReclaimTime"
    t.decimal  "damicoReclaimCost"
    t.decimal  "gradeCompactSFrate"
    t.decimal  "inClassTwo"
    t.decimal  "classTwoCost"
    t.decimal  "inClassOne"
    t.decimal  "classOneCost"
    t.decimal  "inLeveling"
    t.decimal  "levelingCost"
    t.decimal  "inProcess"
    t.decimal  "processCost"
    t.integer  "tonsBasePerDay"
    t.integer  "costBasePerDay"
    t.integer  "tonsPavePerDay"
    t.integer  "costPavePerDay"
    t.integer  "numRentalTrucks"
    t.decimal  "rentalTruckCost"
    t.decimal  "truckDays"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "statics", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timestamps", force: :cascade do |t|
    t.datetime "start"
    t.datetime "stop"
    t.boolean  "working"
    t.text     "status"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "timestamps", ["employee_id"], name: "index_timestamps_on_employee_id"

end
