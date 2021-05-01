class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :code
      t.string :name
      t.integer :price
      t.references :category
      t.timestamps
    end
  end
end
