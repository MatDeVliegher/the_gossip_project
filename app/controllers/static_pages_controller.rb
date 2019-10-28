class StaticPagesController < ApplicationController
  
  def home
  	params[:potins] = Potin.all
  end

  def team
  end

  def contact
  end

end
