class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.integer :code
      t.string :name
      t.string :address
      t.references :customer_class
      t.references :prefecture
      t.timestamps
    end
  end
end
