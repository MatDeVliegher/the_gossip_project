class DynamicPagesController < ApplicationController
  def user
  	@user = User.find(params[:user_id])
  end

  def gossip
  	@gossip = Potin.find(params[:gossip_id])
  end

end
