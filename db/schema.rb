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

ActiveRecord::Schema.define(version: 20181102022028) do

  create_table "registrations", force: :cascade do |t|
    t.string   "type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "nationality"
    t.string   "religion"
    t.date     "birthdate"
    t.string   "phone"
    t.string   "street"
    t.string   "city"
    t.string   "postal_code"
    t.boolean  "has_transportation"
    t.string   "marital_status"
    t.string   "spouse_name"
    t.string   "english_fluency"
    t.text     "expectations"
    t.string   "anticipated_residency_duration"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "confirmed_at"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
