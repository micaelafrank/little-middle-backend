class CreateSaleDates < ActiveRecord::Migration[7.0]
  def change
    create_table :sale_dates do |t|
      t.integer :order_id 
      t.timestamps
    end
  end
end
