class User < ActiveRecord::Base
    has_secure_password
   
    has_many :batteries
    has_many :cars, through: :batteries
end
