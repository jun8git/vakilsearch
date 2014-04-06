class PagesController < ApplicationController

  def index
    @cities = City.find(:all, order: :name)
    @service_flag = @cities.map(&:name).include?(cookies[:city])
    if @service_flag
      city = City.where(name: cookies[:city])
      @services = Service.city_services(city)
    end
  end


end
