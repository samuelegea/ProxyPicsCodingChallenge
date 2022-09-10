class CreateAddressUser < ActiveRecord::Migration[7.0]
  def change
    create_table :address_users do |t|
      t.string :Table
      t.references :user, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
