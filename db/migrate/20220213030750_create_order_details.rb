class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.references :order
      t.references :item
      t.integer :price
      t.integer :quantity
      t.integer :making_status

      t.timestamps
    end
  end
end
