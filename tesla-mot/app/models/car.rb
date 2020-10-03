class Car < ActiveRecord::Base
    has_many :batteries
    has_many :users, through: :batteries



    def self.valid_params?(params)
        return !params[:name].empty? && !params[:model].empty?
    end 
end
