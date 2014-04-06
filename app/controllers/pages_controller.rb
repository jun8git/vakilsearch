class PagesController < ApplicationController

  def index
    @cities = City.find(:all, order: :name)
  end


end
