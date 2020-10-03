class AddCarIdToBatteries < ActiveRecord::Migration
    def change
      add_column :batteries, :car_id, :integer
    end
  end