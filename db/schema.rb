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

ActiveRecord::Schema.define(version: 2021_01_11_125047) do

# Could not dump table "comments" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "posts" because of following StandardError
#   Unknown type 'uuid' for column 'id'

  add_foreign_key "comments", "posts"
end
