class CreateCustomerClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_classes do |t|
      t.string :name
      t.timestamps
    end
  end
end
