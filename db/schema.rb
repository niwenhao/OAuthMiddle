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

ActiveRecord::Schema.define(version: 20170215143007) do

  create_table "auth_properties", force: :cascade do |t|
    t.string   "key"
    t.text     "txtValue"
    t.float    "numValue"
    t.integer  "token_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token_id"], name: "index_auth_properties_on_token_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "keyword"
    t.string   "url"
    t.integer  "callsummary"
    t.datetime "summaryStart"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "owner_id"
    t.index ["owner_id"], name: "index_services_on_owner_id"
  end

  create_table "tokens", force: :cascade do |t|
    t.string   "sessionKey"
    t.string   "accessToken"
    t.string   "refreshToken"
    t.string   "scope"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "token"
    t.integer  "owner_id"
    t.index ["owner_id"], name: "index_tokens_on_owner_id"
  end

end
