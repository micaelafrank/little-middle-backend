class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :firstName 
      t.string :lastName
      t.string :email 
      t.string :address1
      t.string :address2
      t.string :city
      t.integer :zipCode
      t.integer :phone 
      t.integer :orderQuantity
      t.string :orderDate 
      
      t.timestamps
    end
  end
end
