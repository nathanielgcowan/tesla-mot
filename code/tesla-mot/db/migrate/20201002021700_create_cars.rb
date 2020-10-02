class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model 
			t.integer :capacity 

      t.timestamps null: false
    end
  end
end
