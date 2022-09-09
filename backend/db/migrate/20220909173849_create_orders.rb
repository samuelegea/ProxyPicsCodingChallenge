class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :status
      t.references :address, null: false, foreign_key: true
      t.references :created_by, null: false, foreign_key: { to_table: :users }
      t.references :processed_by, null: false, foreign_key: { to_table: :users}

      t.timestamps
    end
  end
end
