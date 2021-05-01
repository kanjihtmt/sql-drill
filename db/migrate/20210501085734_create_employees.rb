class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.string :email
      t.integer :hire_fiscal_year
      t.date :birthday
      t.string :blood_type
      t.timestamps
    end
  end
end
