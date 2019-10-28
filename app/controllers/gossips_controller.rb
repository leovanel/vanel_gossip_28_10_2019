class GossipsController < ApplicationController
  def ViewGossip
    @detail = Gossip.find(params['id'])
    

  end
  def ViewProfile
    @profil = User.find(params['id'])
  end
end
