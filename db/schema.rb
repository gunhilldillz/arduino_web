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

ActiveRecord::Schema.define(version: 20140504171947) do

  create_table "arduinos", force: true do |t|
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "led1pos", force: true do |t|
    t.string   "on_off"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "led2pos", force: true do |t|
    t.string   "on_off"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "led3pos", force: true do |t|
    t.string   "on_off"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "led4pos", force: true do |t|
    t.string   "on_off"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servopos", force: true do |t|
    t.integer  "xloc"
    t.integer  "yloc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servoposies", force: true do |t|
    t.integer  "yloc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servoposxes", force: true do |t|
    t.integer  "xloc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
