class HomeController < ApplicationController
  def Show
    @array= Gossip.showall
  end
end
