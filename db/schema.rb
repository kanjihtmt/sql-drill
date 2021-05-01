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

ActiveRecord::Schema.define(version: 2021_05_01_091116) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customer_classes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.string "address"
    t.integer "customer_class_id"
    t.integer "prefecture_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_class_id"], name: "index_customers_on_customer_class_id"
    t.index ["prefecture_id"], name: "index_customers_on_prefecture_id"
  end

  create_table "department_employees", force: :cascade do |t|
    t.integer "department_id"
    t.integer "employee_id"
    t.date "start_on"
    t.date "end_on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_department_employees_on_department_id"
    t.index ["employee_id"], name: "index_department_employees_on_employee_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "height"
    t.integer "weight"
    t.string "email"
    t.integer "hire_fiscal_year"
    t.date "birthday"
    t.string "blood_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.integer "price"
    t.integer "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "salaries", force: :cascade do |t|
    t.integer "employee_id"
    t.date "pay_on"
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_salaries_on_employee_id"
  end

  create_table "sales", force: :cascade do |t|
    t.integer "quantity"
    t.integer "customer_id"
    t.integer "product_id"
    t.integer "employee_id"
    t.date "sale_on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_sales_on_customer_id"
    t.index ["employee_id"], name: "index_sales_on_employee_id"
    t.index ["product_id"], name: "index_sales_on_product_id"
  end

end
