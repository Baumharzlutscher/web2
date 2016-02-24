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

ActiveRecord::Schema.define(version: 20160224170646) do

  create_table "accounts", force: :cascade do |t|
    t.string   "Rechnungsadresse"
    t.string   "Nickname"
    t.string   "Status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "aktions", force: :cascade do |t|
    t.string   "Monat"
    t.string   "Name"
    t.float    "Rabatt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produktes", force: :cascade do |t|
    t.string   "Name"
    t.float    "Preis"
    t.integer  "Bearbeitungszeit"
    t.string   "Produktgruppe"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "standorts", force: :cascade do |t|
    t.string   "Adresse"
    t.string   "Oeffnungszeiten"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "warenkorbs", force: :cascade do |t|
    t.integer  "Anzahl"
    t.string   "Rabattcode"
    t.integer  "Gesamtbetrag"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
