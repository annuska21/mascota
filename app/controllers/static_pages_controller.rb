class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def care
  end

  def shelters
    @shelters = Shelter.all
  end


end
