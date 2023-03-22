class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :buyer_id
      t.integer :quantity
      # t.string :orderDate 
      t.float :donation
      t.timestamps
    end
  end
end
