class PagesController < ApplicationController

  def index
    @cities = City.find(:all, order: :name)
    if @cities.map(&:name).include?(cookies[:city])
      # @services =
    end
  end


end
