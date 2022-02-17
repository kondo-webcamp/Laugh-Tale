class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.references :carts, :customer, foreign_key: true

      t.timestamps
    end
  end
end
