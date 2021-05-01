class CreateDepartmentEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :department_employees do |t|
      t.references :department
      t.references :employee
      t.date :start_on
      t.date :end_on
      t.timestamps
    end
  end
end
