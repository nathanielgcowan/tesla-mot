class Car < ActiveRecord::Base
    has_many :batteries 
    belongs_to :user

    def self.valid_params?(params)
        return !params[:name].empty? && !params[:model].empty?
    end 
end
