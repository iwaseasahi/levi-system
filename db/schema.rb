# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_19_122705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_names", comment: "聖書の書簡名", force: :cascade do |t|
    t.integer "testament", null: false
    t.string "japanese", null: false
    t.string "english", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["english"], name: "index_book_names_on_english", unique: true
    t.index ["japanese"], name: "index_book_names_on_japanese", unique: true
  end

  create_table "books", force: :cascade do |t|
    t.integer "version", null: false
    t.bigint "book_name_id", null: false
    t.integer "chapter", null: false
    t.integer "verse", null: false
    t.text "word", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_name_id"], name: "index_books_on_book_name_id"
    t.index ["version", "book_name_id", "chapter", "verse"], name: "index_books_on_version_and_book_name_id_and_chapter_and_verse", unique: true
  end

  create_table "folders", force: :cascade do |t|
    t.string "title", null: false
    t.boolean "sticky", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["title"], name: "index_folders_on_title", unique: true
  end

  add_foreign_key "books", "book_names"
end
