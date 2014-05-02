class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.float :latitude
      t.float :longitude
      t.string :state
      t.string :city
      t.string :highway_exit
      t.float :unleaded
      t.float :midgrade
      t.float :premium
      t.float :diesel
      t.integer :store_num

      t.timestamps
    end
  end
end
