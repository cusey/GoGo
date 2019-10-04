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

ActiveRecord::Schema.define(version: 20191003190420) do

  create_table "articles", force: :cascade do |t|
    t.string   "author_last_name"
    t.string   "author_first_name"
    t.integer  "rating"
    t.string   "title"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "iata"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.boolean  "completed"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "todo_lists", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "profiles"
    t.integer  "category"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "uploads", force: :cascade do |t|
    t.string   "attachmentFileName"
    t.integer  "attachmentFileSize"
    t.integer  "contactId"
    t.datetime "processedAt"
    t.string   "status"
    t.integer  "organizationId"
    t.integer  "uploaderContactId"
    t.string   "uploadType"
    t.string   "attachmentContentType"
    t.datetime "attachmentUpdatedAt"
    t.integer  "totalRecords"
    t.boolean  "autoProcess"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string   "name"
    t.string   "position"
    t.string   "office"
    t.integer  "age"
    t.string   "gender"
    t.date     "startDate"
    t.decimal  "price",      precision: 10, scale: 2
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end
