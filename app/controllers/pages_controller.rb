class PagesController < ApplicationController
  def home
    @search = Apartment.search(params[:q])
    
    #define featured apartments
    @apartment1 = Apartment.first
    @apartment2 = Apartment.last

  end

  def about
  end

  def contact
  end
end
