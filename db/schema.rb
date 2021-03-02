# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_302_153_614) do
  create_table 'illnesses', force: :cascade do |t|
    t.integer 'user_id', null: false
    t.string 'description'
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_illnesses_on_user_id'
  end

  create_table 'medicines', force: :cascade do |t|
    t.integer 'tracking_id', null: false
    t.string 'name'
    t.float 'quantity'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['tracking_id'], name: 'index_medicines_on_tracking_id'
  end

  create_table 'symptoms', force: :cascade do |t|
    t.integer 'tracking_id', null: false
    t.string 'name'
    t.integer 'intensity'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['tracking_id'], name: 'index_symptoms_on_tracking_id'
  end

  create_table 'trackings', force: :cascade do |t|
    t.integer 'illness_id', null: false
    t.datetime 'date'
    t.integer 'mood'
    t.float 'temperature'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['illness_id'], name: 'index_trackings_on_illness_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'illnesses', 'users'
  add_foreign_key 'medicines', 'trackings'
  add_foreign_key 'symptoms', 'trackings'
  add_foreign_key 'trackings', 'illnesses'
end
