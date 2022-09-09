class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :address_line1
      t.string :address_line2
      t.string :zipcode
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
