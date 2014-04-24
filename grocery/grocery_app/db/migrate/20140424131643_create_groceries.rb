class CreateGroceries < ActiveRecord::Migration
  def change
    create_table :groceries do |t|
      t.string :title
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
