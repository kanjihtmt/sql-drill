class CreateSalaries < ActiveRecord::Migration[6.1]
  def change
    create_table :salaries do |t|
      t.references :employee
      t.date :pay_on
      t.integer :amount
      t.timestamps
    end
  end
end
