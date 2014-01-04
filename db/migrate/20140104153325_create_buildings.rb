class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :address, null:false
      t.string :city, null:false
      t.string :state, null:false
      t.integer :zip, null:false
      t.string :description
      t.integer :owner_id

      t.timestamps
    end
  end
end
