class Battery < ActiveRecord::Base
    belongs_to :car
    belongs_to :users

    def self.valid_params?(params)
		return !params[:name].empty? && !params[:capacity].empty?
	end 
end
