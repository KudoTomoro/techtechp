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

ActiveRecord::Schema.define(version: 20181125063827) do

  create_table "contacts", force: :cascade do |t|
    t.string   "companyname"
    t.string   "name"
    t.string   "phonenumber"
    t.string   "mailaddress"
    t.string   "mailaddressconfirm"
    t.string   "title"
    t.string   "content"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "inquiries", force: :cascade do |t|
    t.string   "company"
    t.string   "name"
    t.string   "tel"
    t.string   "mail"
    t.string   "confirmation_mail"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "date"
    t.integer  "category"
    t.string   "title"
    t.string   "description"
    t.string   "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
