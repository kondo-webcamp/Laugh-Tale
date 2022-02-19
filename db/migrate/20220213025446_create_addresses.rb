class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :customer
      t.string :name
      t.string :postal_code
      t.string :address

      t.timestamps
    end
  end
end
