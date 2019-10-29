class GossipsController < ApplicationController
  def index
    @array= Gossip.showall
  end
  
  def show
    @detail = Gossip.find(params['id']) 

  end
 
  
end
