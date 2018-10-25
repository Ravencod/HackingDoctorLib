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

ActiveRecord::Schema.define(version: 2018_10_25_100230) do

  create_table "appoitments", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "patient_id"
    t.integer "city_id"
    t.datetime "appointment_date"
    t.index ["city_id"], name: "index_appoitments_on_city_id"
    t.index ["doctor_id"], name: "index_appoitments_on_doctor_id"
    t.index ["patient_id"], name: "index_appoitments_on_patient_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "postal_code"
    t.integer "city_id"
    t.integer "specialty_id"
    t.index ["city_id"], name: "index_doctors_on_city_id"
    t.index ["specialty_id"], name: "index_doctors_on_specialty_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "city_id"
    t.index ["city_id"], name: "index_patients_on_city_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.integer "doctor_id"
    t.index ["doctor_id"], name: "index_specialties_on_doctor_id"
  end

end
