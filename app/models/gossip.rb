class Gossip < ApplicationRecord
	belongs_to :user

	def self.showall
		gossip_array = Gossip.all					
		return gossip_array   		
	end

	def self.find(id)
		
    gossip_array = self.showall
    index=id.to_i - 1 
    gossip_id = gossip_array[index]
    
		return gossip_id 
	end

end
