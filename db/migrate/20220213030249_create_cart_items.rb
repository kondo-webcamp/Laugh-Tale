class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.integer :quantity, default: 0
      t.references :item
      t.references :customer
      t.timestamps
    end
  end
end
