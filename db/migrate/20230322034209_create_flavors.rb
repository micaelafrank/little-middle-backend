class CreateFlavors < ActiveRecord::Migration[7.0]
  def change
    create_table :flavors do |t|
      t.string :challahFlavor 
      t.timestamps
    end
  end
end
