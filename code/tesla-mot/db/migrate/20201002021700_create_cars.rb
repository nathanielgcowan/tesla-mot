class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model 
      t.integer :year
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
