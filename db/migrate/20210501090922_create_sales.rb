class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.integer :quantity
      t.references :customer
      t.references :product
      t.references :employee
      t.date :sale_on
      t.timestamps
    end
  end
end
