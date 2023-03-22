class CreateChallahs < ActiveRecord::Migration[7.0]
  def change
    create_table :challahs do |t|
  
      t.timestamps
    end
  end
end
