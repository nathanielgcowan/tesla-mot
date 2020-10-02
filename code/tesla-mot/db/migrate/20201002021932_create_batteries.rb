class CreateBatteries < ActiveRecord::Migration
  def change
    create_table :batteries do |t|
      t.string :name 
      t.string :voltage
      t.integer :car_id

      t.timestamps null: false
    end
  end
end
