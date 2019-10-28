class User < ApplicationRecord
	has_many :gossips

	def self.showall
		user_array = User.all					
		return user_array    		
	end

	def self.find(id)
		
    user_array = self.showall
    index=id.to_i - 1 
    user_id = user_array[index]
    
		return user_id 
	end
end
