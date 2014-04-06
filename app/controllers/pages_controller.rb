class PagesController < ApplicationController

  def index
    @cities = City.find(:all, order: :name)
    @city_flag = @cities.map(&:name).include?(cookies[:city])
    if @city_flag
      city = City.where(name: cookies[:city])
      @services = Service.city_services(city)
    end
  end

  def search
    city_flag = @City.find(:all).map(&:name).include?(cookies[:city])
    service_flag = false
    if city_flag
      city = City.where(name: cookies[:city])
      services = Service.city_services(city)
      service_flag = services.map(&:name).include?(cookies[:service])
    end
    if !city_flag or !service_flag
      redirect_to root_path
    else
      @lawyers = Lawyer.search_lawyers(cookies[:city], cookies[:service])
    end
  end


end
