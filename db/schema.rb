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

ActiveRecord::Schema.define(version: 20130731143242) do

  create_table "weather_data", force: true do |t|
    t.datetime "captured_at"
    t.decimal  "temperature",        precision: 10, scale: 0
    t.decimal  "high_temperature",   precision: 10, scale: 0
    t.decimal  "low_temperature",    precision: 10, scale: 0
    t.decimal  "humidity",           precision: 10, scale: 0
    t.decimal  "dew",                precision: 10, scale: 0
    t.decimal  "wind_speed",         precision: 10, scale: 0
    t.string   "wind_direction"
    t.decimal  "wind_run",           precision: 10, scale: 0
    t.decimal  "hi_speed",           precision: 10, scale: 0
    t.string   "hi_dir"
    t.decimal  "wind_chill",         precision: 10, scale: 0
    t.decimal  "heat",               precision: 10, scale: 0
    t.decimal  "thw",                precision: 10, scale: 0
    t.decimal  "thsw",               precision: 10, scale: 0
    t.decimal  "bar",                precision: 10, scale: 0
    t.decimal  "rain",               precision: 10, scale: 0
    t.decimal  "rain_rate",          precision: 10, scale: 0
    t.decimal  "solar_radiation",    precision: 10, scale: 0
    t.decimal  "solar_energy",       precision: 10, scale: 0
    t.decimal  "hi_solar_radiation", precision: 10, scale: 0
    t.decimal  "uv",                 precision: 10, scale: 0
    t.decimal  "uv_dose",            precision: 10, scale: 0
    t.decimal  "hi_uv",              precision: 10, scale: 0
    t.decimal  "heat_d_d",           precision: 10, scale: 0
    t.decimal  "in_temperature",     precision: 10, scale: 0
    t.decimal  "in_humidity",        precision: 10, scale: 0
    t.decimal  "in_dew",             precision: 10, scale: 0
    t.decimal  "in_heat",            precision: 10, scale: 0
    t.decimal  "in_emc",             precision: 10, scale: 0
    t.decimal  "in_air_density",     precision: 10, scale: 0
    t.decimal  "et",                 precision: 10, scale: 0
    t.decimal  "wind_samp",          precision: 10, scale: 0
    t.decimal  "wind_tx",            precision: 10, scale: 0
    t.decimal  "iss_recept",         precision: 10, scale: 0
    t.decimal  "arc_int",            precision: 10, scale: 0
  end

  add_index "weather_data", ["captured_at"], name: "index_weather_data_on_captured_at", unique: true, using: :btree

end
